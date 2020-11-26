class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource_or_scope)
        session[:user_id] = current_user.id
        @cart = Cart.new(user_id: current_user.id)
        if @cart.save
          root_path
        end
    end
end
