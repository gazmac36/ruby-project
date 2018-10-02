require_relative('../db/sql_runner')
require_relative('./befriending')
require_relative('./category')
require_relative('./volunteer')
require_relative('./service_user')
require_relative('./volunteer_category')

class ServiceUserCategory

  attr_reader :volunteer_id, :category_id

  def initialize(options)
    @id = options['id'].to_i unless options['id'].nil?
    @service_user_id = options['service_user_id']
    @category_id = options['category_id']
  end

  def save
    sql = 'INSERT INTO service_user_categories (service_user_id, category_id)
    VALUES ($1, $2) RETURNING id'
    values = [@service_user_id, @category_id]
    category = SqlRunner.run(sql, values).first
    @id = category['id'].to_i
  end

  def update
    sql = "
    UPDATE service_user_categories SET (service_user_id, category_id) =
    ($1, $2)
    WHERE id = $3"
    values = [@service_user_id, @category_id, @id]
    SqlRunner.run(sql, values)
  end

  def self.delete(id)
    sql = "DELETE FROM service_user_categories where id = $1"
    values = [id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all
    sql = "DELETE FROM service_user_categories "
    values = []
    SqlRunner.run(sql, values)
  end

end
