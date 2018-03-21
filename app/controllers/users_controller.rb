class UsersController < ApplicationController
  def show
  	if user_signed_in? #on vient vérifier si l'utilisateur est connecté
  		@user = User.find(params[:id]) #on viens récupéré le user ciblé par l'événement
      @tagusers = Taguser.where(user_id: current_user.id)
  		if current_user != @user #on viens vérifier que le user ciblé est bien celui connecté
  			redirect_to root_path
  		end
    else
      redirect_to new_user_session_path
  	end

  end

  def index #on sais pas encore ce que c'est mais c'est là au cas ou =)
    if user_signed_in? && current_user.rights == 99 #on vient vérifier si l'utilisateur est connecté et s'il est admin 
    else
      if user_signed_in?
        redirect_to root_path
      else
        redirect_to new_user_session_path
      end
    end
  end

  def admin
    if user_signed_in?
      @user = current_user
      @user.rights = 99
      @user.save
    else
      redirect_to root_path
    end
  end
end
