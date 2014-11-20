class Product < ActiveRecord::Base
  
  validates :name, :description, :price, :stock_quantity, presence: true
end
