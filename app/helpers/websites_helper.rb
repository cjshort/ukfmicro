module WebsitesHelper

	def current_website_id
		@current = Website.find(params[:id])
		return @current.id
	end

end
