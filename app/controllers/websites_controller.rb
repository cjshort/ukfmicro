class WebsitesController < ApplicationController
  def index
    @website = Website.find_by_subdomain!(request.subdomain) 
  end

  def aboutus
    @website = Website.find_by_subdomain!(request.subdomain)
  end

  def blog
    @website = Website.find_by_subdomain!(request.subdomain) 
  end

  def blogshow
  end

  def contact
    @website = Website.find_by_subdomain!(request.subdomain) 
  end
end
