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
      @ingredients = @ingredients.sort{|x,y| [x.name.downcase, x.id] <=> [y.name.downcase, y.id]}
      @value = ""
      ###sert pour le système de filtrage par nom###
      if params[:nom]
        tab = []
        @ingredients.each do |i|
          if i.name.downcase.include?(params[:nom].downcase)
            tab << i
          end
          @ingredients = tab
          @value = params[:nom]
        end
        if current_user != User.find(params[:id]) #on vient vérifier que le user ciblé est bien celui connecté
          redirect_to root_path
        end
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
    @ingredients = @ingredients.sort{|x,y| [x.name.downcase, x.id] <=> [y.name.downcase, y.id]}
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
    @recipe_hash = {} # key: id des recipes / value: array des ingrédients de chaque recette
    @recipe_find = {} # key: id des recipes / value: nombre d'ingrédient commun entre le frigo et les recettes
    @recipe_find_2 = {}

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

    @r_final = Hash[@recipe_find.sort_by{|k, v| v}.reverse] # tri des recettes en fonction du nombre d'aliments en commun

    @recipe_find.each do |k, v|
      @recipe_find_2[k] = v.to_f / Recipe.find(k).ingredients.count * 100
    end

    @r_final_2 = Hash[@recipe_find_2.sort_by{|k, v| v}.reverse]





  end

  def destroy_fridge
     Fridge.destroy(params[:id])

    @user_fridge = Fridge.where(user_id: current_user.id)
    @ingredients = Ingredient.all
    @ingredients = @ingredients.sort{|x,y| [x.name.downcase, x.id] <=> [y.name.downcase, y.id]}
    #AJAX
    respond_to do |f|
      f.js
      f.html
    end
  end

  def cancel_fridge
    @user = current_user
    @user_fridge = Fridge.where(user_id: @user.id)
    @ingredients = Ingredient.all
    Fridge.destroy(@user_fridge.ids)
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
        if @num == nil 
        redirect_to liste_path(current_user.id)
        flash[:danger] = "inscris ton numéro dans le champ"
      else
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
  end

  def send_mail
    UserMailer.list_email(current_user).deliver_now
    redirect_to root_path
    flash[:success] = "email bien envoyé"
  end

end
