class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def new
		@user = current_user
		@recipe = Recipe.new
	end

	def create
		@user = current_user
		@recipe = Recipe.new(recipes_params)
		if @recipe.save
			redirect_to recipes_path
		end
	end

	def edit
		@user = current_user
		@recipe = Recipe.find(params[:id])
	end

	def update
		@user = current_user
		@recipe = Recipe.find(params[:id])
		@recipe.update(recipes_params)
		redirect_to recipes_path
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def destroy
		recipe = Recipe.find(params[:id])
		recipe.destroy
		redirect_to recipes_path
	end

	def add_ing_recipe
		@recipe = Recipe.find(params[:recipe])
		@recipe_ing = IngredientToRecipe.where(recipe_id: @recipe.id)
		@ingredients = Ingredient.all

		if params[:nom]
			tab = []
			@ingredients.each do |i|
				if i.name.include?(params[:nom])
					tab << i
				end
			end
			@ingredients = tab
		end
		
    respond_to do |f|
      f.js
      f.html 
    end
	end

	def post_add_ing_recipe
		@recipe = Recipe.find(params[:recipe])
		@recipe_ing = IngredientToRecipe.where(recipe_id: @recipe.id)
		IngredientToRecipe.create(recipe_id: params[:recipe], ingredient_id: params[:ingredient], quantity: params[:quantity])

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def destroy_ing_recipe
		@recipe = Recipe.find(params[:recipe])
		@recipe_ing = IngredientToRecipe.where(recipe_id: @recipe.id)
		@ingredient = Ingredient.find(params[:ingredient])
		@recipe.ingredients.delete(params[:ingredient])

		respond_to do |f|
      f.js
      f.html 
    end
	end

	 def upvote
  @recipe = Recipe.find(params[:id])
  @recipe.upvote_by current_user
  redirect_to root_path
	end

	def downvote
  @recipe = Recipe.find(params[:id])
  @recipe.downvote_by current_user
  redirect_to root_path
	end


	private

	def recipes_params
		params.require(:recipe).permit(:name, :description, :picture, :time, :price, :user_id)
	end

end
