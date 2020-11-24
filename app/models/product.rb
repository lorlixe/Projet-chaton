#require 'open-uri'

class Product < ApplicationRecord
    belongs_to :category, optional: true
    has_many :product_carts
    has_many :carts, through: :product_carts
  
    has_many :product_orders
    has_many :orders, through: :product_orders

	 #has_one_attached :picture
  
    validates :name, presence: true
    validates :url, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than: 0, less_than: 100 }

  def grab_image(url)
    downloaded_image = open(url)
    self.picture.attach(io: downloaded_image, filename: "foo.jpg")
  end

end