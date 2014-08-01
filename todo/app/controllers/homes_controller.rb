class HomesController < ApplicationController
	def index
		if model_signed_in?
			redirect_to :controller => 'posts', :action => 'index'
		end
	end
end
