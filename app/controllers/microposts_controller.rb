class MicropostsController < ApplicationController
	def create
	  @micropost = current_user.microposts.create(micropost_params)
	  redirect_to current_user
	end

	private
		def micropost_params
      		params.require(:micropost).permit(:content)
		end
end