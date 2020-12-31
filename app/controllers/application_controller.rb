require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # enables sessions hash
    enable :sessions
    # set session secret for additional layer of security
    set :session_secret, "secret_session"
    # registering flash gem to enable use of "messaging"
    register Sinatra::Flash
  end

  get '/' do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
    erb :welcome
    end
  end

  #this will keep track of the logged in user
  helpers do

    # returns boolean if user is logged in or not - double bang converts value
    def logged_in?
        !!current_user
    end

    def current_user
      User.find_by(id: session[:user_id])
    end

  end

end
