class StaticPagesController < ApplicationController
  def home
  end

  def admin
  end

  def about
  end

  def liste
    @user = current_user
    @list_user = List.where(user_id: @user.id)
    @list_ing_user = ListIng.where(user_id: @user.id)
  end

  def frigo
  end

    def send_sms
      @list_ing_user.each do |ing| 
      @ingre = Ingredient.find(ing.ingredient_id).name 
      @qte = ing.quantity 
        end 


    account_sid = 'AC7b38087ce45776fe47fb15cadd51d5fb'
    auth_token = '0e5deabaf78053226dd2553055f23be7'

    client = Twilio::REST::Client.new account_sid, auth_token
    client.api.account.messages.create(
  from: '+33644602942',
  to: '+33631956743',
  body: "#{@ingre} - #{@qte}")
  redirect_to root_path
  end
end
