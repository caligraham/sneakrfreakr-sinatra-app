require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end



#Sinatra Middleware that lets our app send patch requests.

use Rack::MethodOverride

#where I will mount other controllers 'use'
use UsersController
use PostsController


run ApplicationController
