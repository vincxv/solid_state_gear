class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end
  
  def show
    @products = Product.find(params[:category_id])
  end
  
end