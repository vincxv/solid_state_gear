class CategoriesController < ApplicationController
  
  def index
    @categories = Category.all
  end
  
  def show
    @products = Category.find_by_id(params[:id]).products
    @categories = Category.all
  end
  
end