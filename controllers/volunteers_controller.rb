require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/volunteer')
require_relative('../models/service_user')
require_relative('../models/befriending')
require_relative('../models/category')
require("pry-byebug")

get '/volunteers' do
  @volunteers = Volunteer.all
  erb (:"/volunteers/index")
end

get '/volunteer/new' do
  erb(:"volunteers/new")
end

get '/volunteer/:id' do
  @volunteer = Volunteer.find(params['id'].to_i)
  binding.pry
  @categories = @volunteer.categories_as_string
  @category_check = @volunteer.categories
  erb(:"volunteers/show")
end

get '/volunteer/:id/edit' do
  @volunteer = Volunteer.find(params['id'].to_i)
  erb(:"volunteers/edit")
end

get '/volunteer/:id/check_delete' do
  @volunteer = Volunteer.find(params['id'].to_i)
  erb(:"volunteers/check_delete")
end

post '/volunteer/:id/delete' do
  Volunteer.delete(params['id'].to_i)
  erb(:"volunteers/deleted")
end

post '/volunteer/:id' do
  volunteer = Volunteer.new(params)
  volunteer.update

  redirect to '/volunteer/' + params['id']
end

post '/volunteer' do
  category_names = Category.names_as_array
  keys = params.keys
  selected_categories = category_names & keys
  category_ids = selected_categories.map { |category| Category.name_to_id(category) }
  volunteer = Volunteer.new(params)
  volunteer.save
   volunteer_categories = category_ids.map { |category_id|
    VolunteerCategory.new(
      'volunteer_id' => volunteer.id,
      'category_id' => category_id) }
  volunteer_categories.map { |category| category.save }
  erb(:"volunteers/create")
end
