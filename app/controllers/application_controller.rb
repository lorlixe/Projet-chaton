class ApplicationController < ActionController::Base
    include ApplicationHelper
    after_action :create_cart_for_a_current_user, only: [:create]
end
