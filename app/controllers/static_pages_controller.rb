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
    if user_signed_in? #on vient vérifier si l'utilisateur est connecté
      @user = current_user #user actuel
      @list_user = List.where(user_id: @user.id) #pointe sur les recettes de notre utilisateur
      @list_ing_user = ListIng.where(user_id: @user.id) #pointe sur les ingrédient présent dans la liste de notre utilisateur
      if current_user != User.find(params[:id]) #on vient vérifier que le user ciblé est bien celui connecté
        redirect_to root_path
      end
    else
      redirect_to new_user_session_path
    end
    
    respond_to do |f|
      f.js
      f.html
    end

  end

  def frigo
    if user_signed_in? #on vient vérifier si l'utilisateur est connecté
      @ingredients = Ingredient.all

      @value = ""

      ###sert pour le système de filtrage par nom###
      if params[:nom]
        tab = []
        @ingredients.each do |i|
            if i.name.include?(params[:nom])
              tab << i
            end
        end
        @ingredients = tab
        @value = params[:nom]
      end
      if current_user != User.find(params[:id]) #on vient vérifier que le user ciblé est bien celui connecté
        redirect_to root_path
      end

    else
      redirect_to new_user_session_path
    end

    #AJAX
    respond_to do |f|
      f.js
      f.html
    end
  
  end

  def add_fridge

    @ingredients = Ingredient.all
    ing_id = params[:ingredient_id]

    if Fridge.exists?(user_id: current_user.id, ingredient_id: ing_id) == false
      Fridge.create(user_id: current_user.id, ingredient_id: ing_id)
    end
    #AJAX
    respond_to do |f|
      f.js
      f.html
    end
  end

  def find_recipe
    @user = current_user
    @fridge = Fridge.where(user_id: @user.id)
    @fridge_ing = []
    @recipes = Recipe.all
    @recipe_hash = {}
    @recipe_find = {}

    # On récupère les ID des ingrédients du frigo
    @fridge.each do |fridge_ing|
      @fridge_ing << fridge_ing.ingredient_id
    end

    @recipes.each do |recipe|
      @ing = []
      IngredientToRecipe.where(recipe_id: recipe.id).each do |ing_recipe|
        @ing << ing_recipe.ingredient_id
      end
      @recipe_hash[recipe.id] = @ing
    end

    @recipe_hash.each do |r, ing|
      if (ing&@fridge_ing).count > 0
        @recipe_find[r] = (ing&@fridge_ing).count
      end
    end

    @r_final = Hash[@recipe_find.sort_by{|k, v| v}.reverse]





  end

  def cancel_fridge
    @user = current_user
    @user_fridge = Fridge.where(user_id: @user.id)

    Fridge.destroy(@user_fridge.ids)
    redirect_to root_path
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
      @liste = @arr.to_s
    account_sid = ENV['TWILIO_ACCOUNT_SID']

    auth_token = ENV['TWILIO_AUTH_TOKEN']

    client = Twilio::REST::Client.new account_sid, auth_token
    client.api.account.messages.create(
  from: '+33644602942',
  to: "#{@num}",
  body: "#{@liste}")

  redirect_to root_path
  flash[:success] = "sms bien envoyé"
  end

  def send_mail
    UserMailer.list_email(current_user).deliver_now
    flash[:success] = "sms bien envoyé"
    redirect_to root_path
    flash[:success] = "sms bien envoyé"
  end

  def logyou

  end
end
