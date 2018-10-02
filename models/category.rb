require_relative('../db/sql_runner')

class Category

  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i unless options['id'].nil?
    @name = options['name']
  end

  def save
    sql = 'INSERT INTO categories (name)
    VALUES ($1) RETURNING id'
    values = [@name]
    category = SqlRunner.run(sql, values).first
    @id = category['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM categories"
    values = []
    categories = SqlRunner.run(sql, values)
    return categories.map { |category| Category.new(category) }
  end

  def self.names_as_array()
    categories = self.all
    return categories.map { |category| category.name }
  end


  def self.find_by_name(name)
    sql = "SELECT * FROM categories WHERE name = $1"
    values = [name]
    category_array = SqlRunner.run(sql, values)
    category_hash = category_array.first
    return Category.new(category_hash)
  end

  def self.find_by_id(id)
    sql = "SELECT * FROM categories WHERE id = $1"
    values = [id]
    category_array = SqlRunner.run(sql, values)
    category_hash = category_array.first
    return Category.new(category_hash)
  end

  def self.name_to_id(name)
    category = find_by_name(name)
    return category.id
  end

  def self.id_to_name(id)
    category = find_by_id(id)
    return category.name
  end

end
