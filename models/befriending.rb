require_relative('../db/sql_runner')
require_relative('./service_user')
require_relative('./category')
require_relative('./volunteer')
require_relative('./service_user_category')
require_relative('./volunteer_category')
require('pry-byebug')

class Befriending

  attr_reader :id, :volunteer_id, :service_user_id
  attr_accessor :location

  def initialize(options)
    @id = options['id'].to_i unless options['id'].nil?
    @location = options['location']
    @volunteer_id = options['volunteer_id'].to_i
    @service_user_id = options['service_user_id'].to_i
  end

 def save
   sql = 'INSERT INTO befriendings (location, volunteer_id, service_user_id)
   VALUES ($1, $2, $3) RETURNING id'
   values = [@location, @volunteer_id, @service_user_id]
   befriending = SqlRunner.run(sql, values).first
   @id = befriending['id'].to_i
 end

  def update
    sql = "
    UPDATE befriendings SET (location, volunteer_id, service_user_id) =
    ($1, $2, $3)
    WHERE id = $4"
    values = [@location, @volunteer_id, @service_user_id, @id]
    SqlRunner.run(sql, values)
  end

  def self.all()
    sql = "SELECT * FROM befriendings"
    values = []
    befriendings = SqlRunner.run(sql, values)
    return befriendings.map { |befriending| Befriending.new(befriending) }
  end

  def self.find(id)
    sql = "SELECT * FROM befriendings WHERE id = $1"
    values = [id]
    # binding.pry
    befriending_array = SqlRunner.run(sql, values)
    befriending_hash = befriending_array.first
    return Befriending.new(befriending_hash)
  end

  def self.delete_all()
    sql = "DELETE FROM befriendings"
    values = []
    SqlRunner.run(sql, values)
  end

  def self.delete(id)
    sql = "DELETE FROM befriendings where id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def volunteer
    return Volunteer.find(@volunteer_id)
  end

  def service_user
    return ServiceUser.find(@service_user_id)
  end

end
