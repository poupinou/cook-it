class RecipesController < ApplicationController

	def index #AJAX
		@recipes = Recipe.all #permet une vision total sur tous les ingrédients
		@recipes = @recipes.sort{|x,y| [x.name.downcase, x.id] <=> [y.name.downcase, y.id]}
		@tags = Tag.all.sort{|x,y| [x.name.downcase, x.id] <=> [y.name.downcase, y.id]}
		###sert pour le système de filtrage par nom###
		@value = ""
		if params[:nom]
			tab = []
			@recipes.each do |i|
				if i.name.downcase.include?(params[:nom].downcase)
					tab << i
				end
			end
			@recipes = tab
			@value = params[:nom]
		end
		##############################################
		###sert pour le système de filtrage par tag###
		if params[:tag]
			tab = []
			@tagrecipes = Tagrecipe.where(tag_id: params[:tag])
			@tagrecipes.each do |j|
				tab << Recipe.find_by_id(j)
			end
			@recipes = tab
			@tagrecipes = @tagrecipes.sort{|x,y| [Tag.find_by_id(x.tag_id).name.downcase, Tag.find_by_id(x.tag_id).id] <=> [Tag.find_by_id(y.tag_id).name.downcase, Tag.find_by_id(y.tag_id).id]}
		end
		##############################################
		respond_to do |f|#AJAX mon ami
      f.js
      f.html
    end
	end

	def new #AJAX
		if user_signed_in?
			@user = current_user # on pointe
			@recipe = Recipe.new #on prépare la création
		else
			redirect_to logyou_path
		end
	end

	def create
		@user = current_user #on pointe
		@recipe = Recipe.new(recipes_params)# on crée avec les paramètre rentré
		@recipe.save #on sauve

		redirect_to @recipe
	end

	def edit
		@user = current_user #on pointe
		@recipe = Recipe.find(params[:id]) #on pointe
	end

	def update #AJAX
		@user = current_user #on pointe
		@recipe = Recipe.find(params[:id]) #on pointe
		@recipe.update(recipes_params) #on met à jour

		redirect_to @recipe
	end

	def show
		@recipe = Recipe.find(params[:id]) #permet la vision total sur une recette
		@tagrecipes = Tagrecipe.where(recipe_id:@recipe.id) #pour le fonctionnement en Ajax
	end

	def destroy #AJAX
		recipe = Recipe.find(params[:id]) #on pointe
		recipe.destroy

		@recipes = Recipe.all #besoin pour le fonctionnement en ajax
		@recipes = @recipes.sort{|x,y| [x.name.downcase, x.id] <=> [y.name.downcase, y.id]}
		respond_to do |f|#AJAX mon ami
      f.js
      f.html
    end
	end

	def add_ing_recipe #AJAX
		@recipe = Recipe.find(params[:recipe]) #on viens réupéré la recette ciblé
		@recipe_ing = IngredientToRecipe.where(recipe_id: @recipe.id) #ainsi que tous les ingrédient de cette recette
		@recipe_ing = @recipe_ing.sort{|x,y| [Ingredient.find_by_id(x.ingredient_id).name.downcase, Ingredient.find(x.ingredient_id).id] <=> [Ingredient.find_by_id(y.ingredient_id).name.downcase, Ingredient.find(y.ingredient_id).id]}
		@ingredients = Ingredient.all #besoin pour le fonctionnement en AJAX
		@ingredients = @ingredients.sort{|x,y| [x.name.downcase, x.id] <=> [y.name.downcase, y.id]}
		@value = "" #valeur par default (importante)
		###sert pour le système de filtrage par nom###
		if params[:nom]
			tab = []
			@ingredients.each do |i|
				if i.name.downcase.include?(params[:nom].downcase)
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

	def post_add_ing_recipe #AJAX
		@recipe = Recipe.find(params[:recipe])		
		IngredientToRecipe.create(recipe_id: params[:recipe], ingredient_id: params[:ingredient], quantity: params[:quantity], unity: params[:unity])
		@recipe_ing = IngredientToRecipe.where(recipe_id: @recipe.id)
		@recipe_ing = @recipe_ing.sort{|x,y| [Ingredient.find_by_id(x.ingredient_id).name.downcase, Ingredient.find(x.ingredient_id).id] <=> [Ingredient.find_by_id(y.ingredient_id).name.downcase, Ingredient.find(y.ingredient_id).id]}
		respond_to do |f|
      f.js
      f.html
    end
	end

	def destroy_ing_recipe #AJAX
		@recipe = Recipe.find(params[:recipe])		
		@ingredient = Ingredient.find(params[:ingredient])
		@recipe.ingredients.delete(params[:ingredient])
		@recipe_ing = IngredientToRecipe.where(recipe_id: @recipe.id)
		@recipe_ing = @recipe_ing.sort{|x,y| [Ingredient.find_by_id(x.ingredient_id).name.downcase, Ingredient.find(x.ingredient_id).id] <=> [Ingredient.find_by_id(y.ingredient_id).name.downcase, Ingredient.find(y.ingredient_id).id]}
		respond_to do |f|
      f.js
      f.html
    end
	end

	 def upvote #AJAX permet de voter positif
  @recipe = Recipe.find(params[:id]) #on récupère la recette ciblé
  @recipe.upvote_by current_user #on applique la fonction magique sur la recette

  	respond_to do |f|
      f.js
      f.html
    end
	end

	def downvote #AJAX permet de voter negatif
  @recipe = Recipe.find(params[:id])  #on récupère la recette ciblé
  @recipe.downvote_by current_user#on applique la fonction magique sur la recette

  	respond_to do |f|
      f.js
      f.html
    end
	end
end
