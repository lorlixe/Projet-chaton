class Order < ApplicationRecord
    belongs_to :user

    has_many :product_orders
    has_many :products, through: :product_orders

    def order_confirmed
        OrderMailer.order_confirmed(self).deliver_now
        OrderMailer.new_order_admin(self).deliver_now
      end
end
