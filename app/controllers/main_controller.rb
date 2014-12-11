class MainController < ApplicationController
  def index
    @products = Product.all.page(params[:page]).per(6)
    @categories = Category.all
  end

  def featured
    @products = Product.where(featured: true)
                .page(params[:page]).per(6)
    @categories = Category.all
  end

  def new
    @products = Product.where('created_at > ?', 3.days.ago)
                .order(:updated_at)
                .page(params[:page]).per(6)
    @categories = Category.all
  end
end
