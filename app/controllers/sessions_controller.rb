class SessionsController < Devise::SessionsController

  def new
  	@branches = Branch.all
    self.resource = resource_class.new(sign_in_params)
    clean_up_passwords(resource)
    yield resource if block_given?
    respond_with(resource, serialize_options(resource))
  end
end