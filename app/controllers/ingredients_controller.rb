class IngredientsController < ApplicationController

	def index #AJAX

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
		##############################################
    respond_to do |f|
      f.js
      f.html 
    end
	end

	def new
		@ingredient = Ingredient.new #génération d'un ingrédient pour le form for
	end

	def create

		@ingredient = Ingredient.new(ingredients_params) #génération avec les paramètre autorisé
		@ingredient.save #on sauvegarde

		redirect_to ingredients_path
	end

	def edit
		@ingredient = Ingredient.find(params[:id]) #on viens chercher l'élement à modifier

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def update
		@ingredient = Ingredient.find(params[:id]) #on viens chercher l'élement à modifier
		@ingredient.update(ingredients_params) #on sauve

		redirect_to ingredients_path
	end

	def destroy
		Ingredient.destroy(params[:id]) #on viens detruire l'élément selectionné

		@ingredients = Ingredient.all #besoin pour le fonctionnement e AJAX
		respond_to do |f|
      f.js
      f.html 
    end
	end
end
