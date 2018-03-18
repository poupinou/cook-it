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

  def frigo
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

    #AJAX
    respond_to do |f|
      f.js
      f.html
    end
  end

  def add_fridge
    
    @ingredients = Ingredient.all
    ing_id = params[:ingredient_id]
    Fridge.create(user_id: current_user.id, ingredient_id: ing_id)
    
    #AJAX
    respond_to do |f|
      f.js
      f.html
    end
  end

  def find_recipe
    @user = current_user
    @fridge = Fridge.where(user_id: @user.id)
    @recipe_find = []

    # On cherche toutes les recettes qui ont au moins un ingredient
    @fridge.each do |id_ing|
      IngredientToRecipe.where(ingredient_id: id_ing).each do |id_recipe|
          @recipe_find << id_recipe.recipe_id
      end
    end
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
    account_sid = ENV['TWILIO_ACCOUNT_SID']

    auth_token = ENV['TWILIO_AUTH_TOKEN']

    client = Twilio::REST::Client.new account_sid, auth_token
    client.api.account.messages.create(
  from: '+33644602942',
  to: "#{@num}",
  body: "#{@arr}")

  redirect_to root_path
  flash[:success] = "sms bien envoyé"
  end

  def send_mail
    UserMailer.list_email(current_user).deliver_now
    flash[:success] = "sms bien envoyé"
    redirect_to root_path
    flash[:success] = "sms bien envoyé"
  end

end
