require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # enables sessions hash
    enable :sessions
    # set session secret(encryption key) for additional layer of security
    set :session_secret, "secret_session"
    # registering flash gem to enable use of "messaging"
    register Sinatra::Flash
  end

  #this will keep track of the logged in user
  get '/' do
    if logged_in?
      redirect "/users/#{current_user.id}"
    else
    erb :welcome
    end
  end
  
  helpers do #allows views to access methods

    # double bang converts value to true or false
    def logged_in?
        !!current_user
    end

    def current_user #memoization / making it so we don't hit the db over & over
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    #authorization helper for editing & deleting posts
    def authorized_to_edit?(post)
      post.user == current_user
    end

    def redirect_if_not_logged_in
      if !logged_in?
        flash[:error] = "You must be logged in to view this page"
        redirect '/login'
      end
    end

  end

end
