require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # enables sessions hash
    enable :sessions
    # set session secret for additional layer of security
    set :session_secret, "secret_session"
  end

  get "/" do
    erb :welcome
  end

end
