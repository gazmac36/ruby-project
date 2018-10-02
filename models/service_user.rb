require_relative('../db/sql_runner')
require_relative('./befriending')
require_relative('./category')
require_relative('./volunteer')
require_relative('./service_user_category')
require_relative('./volunteer_category')

class ServiceUser
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
    sql = 'INSERT INTO service_users (name, age, address_line1, address_line2, address_town, address_county, address_postcode, contact_phone, contact_email)
    VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9) RETURNING id'
    values = [@name, @age, @address_line1, @address_line2, @address_town, @address_county, @address_postcode, @contact_phone, @contact_email]
    service_user = SqlRunner.run(sql, values).first
    @id = service_user['id'].to_i
  end

  def update
    sql = "
    UPDATE service_users SET (name, age, address_line1, address_line2, address_town, address_county, address_postcode, contact_phone, contact_email) =
    ($1, $2, $3, $4, $5, $6, $7, $8, $9)
    WHERE id = $10"
    values = [@name, @age, @address_line1, @address_line2, @address_town, @address_county, @address_postcode, @contact_phone, @contact_email, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = 'SELECT * FROM service_users'
    values = []
    service_users = SqlRunner.run(sql, values)
    return service_users.map { |service_user| ServiceUser.new(service_user) }
  end

  def self.find(id)
    sql = "SELECT * FROM service_users WHERE id = $1"
    values = [id]
    service_user_array = SqlRunner.run(sql, values)
    service_user_hash = service_user_array.first
    return ServiceUser.new(service_user_hash)
  end

  def self.delete_all()
    sql = "DELETE FROM service_users "
    values = []
    SqlRunner.run(sql, values)
  end

  def self.delete(id)
    sql = "DELETE FROM service_users where id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def volunteer()
    sql = "SELECT volunteers.*
    FROM volunteers
    INNER JOIN befriendings
    ON volunteers.id = befriendings.volunteer_id
    WHERE befriendings.volunteer_id = $1"
    values = [@id]
    results = SqlRunner.run(sql, values)
    return Volunteer.new(results.first)
  end

  def categories
    sql = "SELECT categories.name
    FROM categories
    INNER JOIN service_user_categories
    ON categories.id = service_user_categories.category_id
    WHERE service_user_categories.service_user_id = $1"
    values = [@id]
    categories = SqlRunner.run(sql, values)
    return categories.map { |category| Category.new(category) }
  end

  def categories_as_string
    return categories.map { |category| category.name }.join(' | ')
  end


end
