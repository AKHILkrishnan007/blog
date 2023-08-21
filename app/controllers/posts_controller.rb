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
        @post = Post.find(params[:id])
        # 
    end

    def update

        @post = Post.find(params[:id])
        @post.title=params[:title]
        @post.content=params[:content]
        @post.save!
        flash.notice="Edit Success"
        redirect_to "/posts/view?id=#{@post.id.to_s}"
    end
end
