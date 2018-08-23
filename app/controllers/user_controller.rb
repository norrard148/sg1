class UserController < ApplicationController
    def index
        @posts = Post.all
        if user_signed_in? 

        else
          redirect_to "/"
        end
    end


end
  