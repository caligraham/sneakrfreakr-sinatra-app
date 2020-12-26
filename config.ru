require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end


#where I will mount other controller 'use'
#so I can send PATCH & DELETE requests

use Rack::MethodOverride

run ApplicationController
