module ApplicationHelper
    def create_cart_for_a_current_user
        session[:user_id] = current_user.id
        @cart = Cart.new(user_id: current_user.id)
        if @cart.save
            root_path
        end
    end
end
