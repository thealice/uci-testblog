class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = current_user.posts.build(post_params)
        if @post.save
            redirect_to post_path(@post)
        else
            flash[:message] = "Your post could not be created."
            render :new
        end
    end

    def show
        @post = Post.find_by_id(params[:id])
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, :category_id)
    end
end
