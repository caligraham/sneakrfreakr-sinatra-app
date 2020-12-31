class UsersController < ApplicationController

    #Rendering login form
    get "/login" do
       erb :'/login'
    end

    #Receiving data(params) from login form
    post "/login" do
    #find user and authenticate - then log them in and redirect to user's collection
    user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
           #creates a key/value pair in the sessions hash with user_id to log in
           session[:user_id] = user.id
           #add a 'success' msg to flash hash
           flash[:message] = "Welcome back #{user.username}"
           redirect "/users/#{user.id}"
        else
           #error msg
           flash[:error] = "Your login credentials were invalid. Please try again!"
           # redirects back to the login route
           redirect '/login'
        end
    end

    #users collection route
    get "/users/:id" do
        #find user
        @user = User.find_by(id: params[:id])
        erb :'/users/show'
        
    end

    get '/signup' do
        erb :'/signup'
    end

    post '/users' do
        @user = User.create(params)
        session[:user_id] = @user.id
        redirect "/users/#{@user.id}"
    end

    get '/logout' do
        session.clear
        redirect '/'
    end



end