class ApplicationController < ActionController::Base
    
    before_action :getalbumNav

	private
	def getalbumNav
		@albumNav = Album.all.order('updated_at DESC').paginate(:page => params[:page], :per_page => 12)
	end
end
