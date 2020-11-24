module ApplicationHelper
    def create_cart_for_a_current_user
        if current_user != nil && current_user.cart == nil
            cart = Cart.create(user: current_user)
        end
    end
end
