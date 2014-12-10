class PagesController < ApplicationController
  def about
    @page = Page.where(permalink: 'about').take
    @categories = Category.all
  end

  def contact
    @page = Page.where(permalink: 'contact').take
    @categories = Category.all
  end
end