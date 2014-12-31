module AdminsHelper

def resource_name
	:branch
end

def resource
	@resource ||= Branch.new
end

def devise_mapping
	@devise_mapping ||= Devise.mappings[:branch]
end
end
