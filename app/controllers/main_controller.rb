class MainController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(3)
    @categories = Category.all
  end
end
