class PostsController < ApplicationController


    #BUILDING OUT CRUD
    #Read - showing all posts

    get '/posts' do
        #attach the posts model so we can view all from double
        @posts = Post.all
        #render all the posts
        erb :'posts/index'
    end

    #To display a single post
    get '/posts/:id' do
        @post = Post.find(params[:id])
        erb :'/posts/show'
    end

    
    #Create


    #Update

    
    #Delete

    
end