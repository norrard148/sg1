class UserController < ApplicationController
    def index
        if user_signed_in? 

        else
          redirect_to "/"
        end
    end


end
  