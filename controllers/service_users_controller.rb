require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/volunteer')
require_relative('../models/service_user')
require_relative('../models/befriending')
require_relative('../models/category')
require_relative('../models/service_user_category')
require('pry-byebug')

get '/service_users' do
  @service_users = ServiceUser.all
  erb (:"/service_users/index")
end

get '/service_user/new' do
  erb(:"service_users/new")
end

get '/service_user/:id' do
  @service_user = ServiceUser.find(params['id'].to_i)
  @categories = @service_user.categories_as_string
  erb(:"service_users/show")
end

get '/service_user/:id/edit' do
  @service_user = ServiceUser.find(params['id'].to_i)
  erb(:"service_users/edit")
end

get '/service_user/:id/check_delete' do
  @service_user = ServiceUser.find(params['id'].to_i)
  erb(:"service_users/check_delete")
end

post '/service_user/:id/delete' do
  ServiceUser.delete(params['id'].to_i)
  erb(:"service_users/deleted")
end

post '/service_user' do
  service_user = ServiceUser.new(params)
  service_user.save
  category_names = Category.names_as_array
  keys = params.keys
  selected_categories = category_names & keys
  category_ids = selected_categories.map { |category| Category.name_to_id(category) }
  service_user_categories = category_ids.map { |category_id|
  ServiceUserCategory.new(
    'service_user_id' => service_user.id,
    'category_id' => category_id)}
  service_user_categories.map { |category| category.save }
  redirect to '/service_users'
end

post '/service_user/:id' do
  ServiceUserCategory.delete(params['id'].to_i)
  service_user = ServiceUser.new(params)
  service_user.update

  category_names = Category.names_as_array
  keys = params.keys
  selected_categories = category_names & keys
  category_ids = selected_categories.map { |category| Category.name_to_id(category) }
  # service_user = ServiceUser.new(params)
  # service_user.save


  # The next section generates new instances of serviceusercategory
  # with new IDs, adding new records to the database.
  #  Each new object should use the same user id derived from the
  # record being accessed, rather than generating a new ID.
  service_user_categories = category_ids.map { |category_id|
    ServiceUserCategory.new(
      'service_user_id' => service_user.id,
      'category_id' => category_id) }

  service_user_categories.map { |category| category.save }

  redirect to '/service_user/' + params['id']

end
