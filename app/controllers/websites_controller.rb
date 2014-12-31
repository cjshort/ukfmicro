class WebsitesController < ApplicationController
  def index
    @website = Website.find(params[:id]) 
  end

  def aboutus
    @website = Website.find(params[:id]) 
  end

  def blog
    @website = Website.find(params[:id]) 
  end

  def blogshow
  end

  def contact
    @website = Website.find(params[:id]) 
  end
end
