class PagesController < ApplicationController
  def about
    @page = Page.where(permalink: about)
  end

  def contact
    @page = Page.where(permalink: contact)
  end
end