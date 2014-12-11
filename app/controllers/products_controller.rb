class ProductsController < ApplicationController
  def index
    @products = Product.all
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
    @categories = Category.all
  end

  def search_results
    @categories = Category.all
    keywords = "%#{params[:keyword_search]}%"
    if params[:category].present?
      @products = Category.find_by_id(params[:category])
                  .products.where('name LIKE ?', keywords)
    else
      @products = Product.where('name LIKE ?', keywords)
    end
  end
  
  def new
    @categories = Category.all
  end
  
  def add_item_cart
    (session[:cart] ||= []) << params[:id]
    redirect_to :back
  end
  
  def item_cart
    @categories = Category.all
    @products = Product.all
  end
end
