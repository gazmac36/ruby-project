require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/volunteer')
require_relative('../models/service_user')
require_relative('../models/befriending')
require('pry')

get '/befriendings' do
  @befriendings = Befriending.all
  @service_users = ServiceUser.all
  @volunteers = Volunteer.all
  erb (:"/befriendings/index")
end

get '/befriendings/new' do
  @volunteers = Volunteer.all
  @service_users = ServiceUser.all
  erb(:"befriendings/new")
end

get '/befriending/:id' do
  @befriending = Befriending.find(params['id'].to_i)
  erb(:"befriendings/show")
end

get '/befriending/:id/edit' do
  @volunteers = Volunteer.all
  @service_users = ServiceUser.all
  @befriending = Befriending.find(params['id'].to_i)
  erb(:"befriendings/edit")
end


get '/befriending/:id/check_delete' do
  @befriending = Befriending.find(params['id'].to_i)
  erb(:"befriendings/check_delete")
end

post '/befriending/:id/delete' do
  Befriending.delete(params['id'].to_i)
  erb(:"befriendings/deleted")
end

post '/befriending' do
  befriending = Befriending.new(params)
  befriending.save
  redirect to '/befriendings'
end

post '/befriending/view' do
  redirect to '/befriending/' + params['befriending_id']
end

post '/befriending/:id' do
  befriending = Befriending.new(params)
  befriending.update
  redirect to '/befriending/' + params['id']
end
