class PostsController < ApplicationController
    def index
        @Posts = Post.all
    end
end
