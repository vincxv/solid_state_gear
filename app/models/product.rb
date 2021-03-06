class Product < ActiveRecord::Base
  validates :name, :description, :price, :stock_quantity, presence: true
  mount_uploader :image, ImageUploader
  belongs_to :category
end
