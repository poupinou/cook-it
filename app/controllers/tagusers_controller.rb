class TagusersController < ApplicationController

	def new
		if  user_signed_in? == false
			redirect_to root_path
		end
		@taguser = Taguser.new()
	end

	def create
		if Taguser.exists?(user_id: current_user.id, tag_id: params[:tag_id]) == false
			@taguser = Taguser.new(taguser_params)
			@taguser.user_id = current_user.id
			@taguser.save
		else
			flash[:danger] ="ok ok on a compris"
		end
		redirect_to profil_path(current_user.id)
	end

	def destroy #AJAX
		Taguser.destroy(params[:id])

		@tagusers = Taguser.where(user_id: current_user.id) #pour le fonctionnement en Ajax

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def taguser_params
		params.permit(:tag_id)
	end
end
