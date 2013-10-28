class UsersController < ApplicationController
 def index
	@users = User.all
	@locations = Array.new
	@users.each do |user|
		if user.facebook.get_object("me").has_key?("location")
			location = user.facebook.get_object("me")["location"]["name"]
			@locations.push(location)
		end
	end
  end

 def show
 	@user = User.find(params[:id])
 	@micropost = current_user.microposts.build
 	@microposts = current_user.microposts
 end

 def destroy
 	User.find(params[:id]).destroy
 	redirect_to users_url
 end

end