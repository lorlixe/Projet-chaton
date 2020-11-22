class Cart < ApplicationRecord
    has_one :user
    has_many :product_carts
    has_many :products, through: :product_carts
end
