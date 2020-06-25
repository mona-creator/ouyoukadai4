class RelationshipsController < ApplicationController
	def follow
	  current_user.follow(params[:id])
      redirect_to request.referrer || root_url
	end

	def unfollow
	  current_user.unfollow(params[:id])
      redirect_to request.referrer || root_url
	end
end
