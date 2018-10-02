require_relative('../db/sql_runner')
require_relative('./befriending')
require_relative('./category')
require_relative('./service_user_category')
require_relative('./volunteer')

class VolunteerCategory

  attr_accessor :category

  def initialize(options)
    @id = options['id'].to_i unless options['id'].nil?
    @volunteer_id = options['volunteer_id']
    @category_id = options['category_id']
  end

  def save
    sql = 'INSERT INTO volunteer_categories (volunteer_id, category_id)
    VALUES ($1, $2) RETURNING id'
    values = [@volunteer_id, @category_id]
    category = SqlRunner.run(sql, values).first
    @id = category['id'].to_i
  end

  def update
    sql = "
    UPDATE volunteer_categories SET (service_user_id, category_id) =
    ($1, $2)
    WHERE id = $3"
    values = [@service_user_id, @category_id, @id]
    SqlRunner.run(sql, values)
  end

end
