class BranchesController < ApplicationController
	before_action :authenticate_branch!
	layout 'branches'

  def dashboard
  	@branch = params[:id].blank? ? current_branch : Branch.find(params[:id])
  end

  def settings
  end

  def editwebsite
  end
end
