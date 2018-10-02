require_relative('../db/sql_runner')
require_relative('./befriending')
require_relative('./volunteer_category')
require_relative('./service_user_category')
require_relative('./volunteer')

class Volunteer
  attr_reader :id
  attr_accessor :name, :age, :address_line1, :address_line2, :address_town, :address_county, :address_postcode, :contact_phone, :contact_email

  def initialize(options)
    @id = options['id'].to_i unless options['id'].nil?
    @name = options['name']
    @age = options['age']
    @address_line1 = options['address_line1']
    @address_line2 = options['address_line2']
    @address_town = options['address_town']
    @address_county = options['address_county']
    @address_postcode = options['address_postcode']
    @contact_phone = options['contact_phone']
    @contact_email = options['contact_email']
  end

  def save
    sql = 'INSERT INTO volunteers (name, age, address_line1, address_line2, address_town, address_county, address_postcode, contact_phone, contact_email)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING id'
    values = [@name, @age, @address_line1, @address_line2, @address_town, @address_county, @address_postcode, @contact_phone, @contact_email]
    volunteer = SqlRunner.run(sql, values).first
    @id = volunteer['id'].to_i
  end

  def update
    sql = "
    UPDATE volunteers SET (name, age, address_line1, address_line2, address_town,
    address_county, address_postcode, contact_phone, contact_email) =
    ($1, $2, $3, $4, $5, $6, $7, $8, $9)
    WHERE id = $10"
    values = [@name, @age, @address_line1, @address_line2, @address_town, @address_county, @address_postcode, @contact_phone, @contact_email, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = 'SELECT * FROM volunteers'
    values = []
    volunteers = SqlRunner.run(sql, values)
    return volunteers.map { |volunteer| Volunteer.new(volunteer) }
  end

  def self.find(id)
    sql = "SELECT * FROM volunteers WHERE id = $1"
    values = [id]
    volunteer_array = SqlRunner.run(sql, values)
    volunteer_hash = volunteer_array.first
    return Volunteer.new(volunteer_hash)
  end

  def self.delete_all()
    sql = "DELETE FROM volunteers "
    values = []
    SqlRunner.run(sql, values)
  end

  def self.delete(id)
    sql = "DELETE FROM volunteers where id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def service_user()
    sql = "SELECT service_users.*
    FROM service_users
    INNER JOIN befriendings
    ON service_users.id = befriendings.service_user_id
    WHERE befriendings.service_user_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return ServiceUser.new(results.first)
  end

  def categories
    sql = "SELECT categories.name
    FROM categories
    INNER JOIN volunteer_categories
    ON categories.id = volunteer_categories.category_id
    WHERE volunteer_categories.volunteer_id = $1"
    values = [@id]
    categories = SqlRunner.run(sql, values)
    return categories.map { |category| Category.new(category) }
  end

  def categories_as_string
    return categories.map { |category| category.name }.join(' | ')
  end

end
