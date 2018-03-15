class StaticPagesController < ApplicationController
  def home
  end

  def admin #AJAX
    respond_to do |f|
      f.js
      f.html 
    end
  end

  def about #AJAX
    respond_to do |f|
      f.js
      f.html 
    end
  end

  def liste #AJAX
    @user = current_user #user actuel
    @list_user = List.where(user_id: @user.id) #pointe sur les recettes de notre utilisateur
    @list_ing_user = ListIng.where(user_id: @user.id) #pointe sur les ingrédient présent dans la liste de notre utilisateur

    respond_to do |f|
      f.js
      f.html 
    end
  end

  def frigo #AJAX
    respond_to do |f|
      f.js
      f.html 
    end
  end

    def send_sms #permet d'envoyer des méssages wow c'est trop bien!!!!!!
      @num = params[:phone_number]
      @user = current_user
    @list_ing_user = ListIng.where(user_id: @user.id)
    @arr = []
    @list_ing_user.each do |ing|
      @arr << Ingredient.find(ing.ingredient_id).name 
      @arr << ing.quantity 
        end 
    account_sid = 'AC7b38087ce45776fe47fb15cadd51d5fb'
    auth_token = '0e5deabaf78053226dd2553055f23be7'

    client = Twilio::REST::Client.new account_sid, auth_token
    client.api.account.messages.create(
  from: '+33644602942',
  to: "#{@num}",
  body: "#{@arr}")
  redirect_to root_path
  end

  def send_mail
    UserMailer.list_email(current_user).deliver_now
    redirect_to root_path
  end

end
