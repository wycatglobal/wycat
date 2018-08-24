class ApplicationController < ActionController::Base
    
    before_action :getalbumNav

	private
	def getalbumNav
		@albumNav = Album.all
	end
end
