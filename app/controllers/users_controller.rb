class UsersController < ApplicationController
  def show
  	if user_signed_in? #on viens vérifier si l'utilisateur est connété
  		@user = User.find(params[:id]) #on viens récupéré le user ciblé par l'événement
  		if current_user != @user #on viens vérifier que le user ciblé est bien celui connecté
  			redirect_to root_path
  		end
    else
      redirect_to new_user_session_path
  	end
  	
  end

  def index #on sais pas encore ce que c'est mais c'est là au cas ou =)
  end
end
