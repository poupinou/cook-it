class UsersController < ApplicationController
  def show
  	if user_signed_in?
  		@user = User.find(params[:id])
  		if current_user == @user
  		else
  			redirect_to new_user_session_path
  		end
  	end
  	
  end

  def index
  end

  def new
    @list = List.new(lists_params)
  end
  
end
