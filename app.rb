require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/volunteers_controller')
require_relative('controllers/service_users_controller')
require_relative('controllers/befriendings_controller')

get '/' do
  erb(:index)
end
