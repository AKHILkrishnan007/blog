class PostsController < ApplicationController
   
    def index
        @posts = Post.all
    end

    def view
        @post = Post.find(params[:id])
    end

    def new
    end
    
    def create

        @post=Post.new
        @post.title=params[:title]
        @post.content=params[:content]
        @post.save!
        flash.notice="Success"
        redirect_to "/"

    end

    def edit
    
    end

end
