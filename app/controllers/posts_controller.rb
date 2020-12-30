class PostsController < ApplicationController


    #BUILDING OUT CRUD
    #Read - showing all posts

    get '/posts' do
        #attach the posts model so we can view all from double
        @posts = Post.all
        #render all the posts
        erb :'posts/index'
    end


    #Create - render a form for user to create a new post

    get '/posts/new' do
        erb :"posts/new"
    end

    post '/posts' do
       post = Post.create(title: params[:title], image_url: params[:image_url], description: params[:description], user_id: current_user.id)
        # after creating post, redirect to post show page
        redirect "/posts/#{post.id}"
    end

    # an issue with the way code is ordered. 

    #To display a single post
    get '/posts/:id' do
        @post = Post.find(params[:id])
        erb :'/posts/show'
    end

 
    #Update
    #Edit button that takes us to form
    #Render form to edit post
    
    get '/posts/:id/edit' do
        @post = Post.find(params[:id])
        erb :'/posts/edit'
    end
    
    #Use PATCH method here.. 
    patch '/posts/:id' do
        @post = Post.find(params[:id])
        @post.update(title: params[:title], image_url: params[:image_url], description: params[:description])
        redirect "/posts/#{post.id}"
    end
    
    #Delete
    #Delete the post - as well as the existing route

    delete '/posts/:id' do
        #gotta find the post we want to Delete
        @post = Post.find(params[:id])
        @post.destroy
        redirect '/posts'
    end

    
end