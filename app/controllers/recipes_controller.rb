class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipes_params)
		if @recipe.save
			redirect_to recipes_path
		end
	end

	def edit
		@recipe = Recipe.find(params[:id])
	end

	def update
		@recipe = Recipe.find(params[:id])
		@recipe.update(recipes_params)
		redirect_to recipes_path
	end

	def show
		@recipe = Recipe.find(params[:id])
	end

	def destroy
		Recipe.destroy(params[:id])
		redirect_to recipes_path
	end

	def add_ing_recipe
		@recipe = Recipe.find(params[:recipe])
		@recipe_ing = IngredientToRecipe.where(recipe_id: @recipe.id)

		@ingredients = Ingredient.all
	end

	def post_add_ing_recipe
		@recipe = Recipe.find(params[:recipe])
		IngredientToRecipe.create(recipe_id: params[:recipe], ingredient_id: params[:ingredient], quantity: params[:quantity])
	end

	def destroy_ing_recipe
		@recipe = Recipe.find(params[:recipe])
		@ingredient = Ingredient.find(params[:ingredient])
		@recipe.ingredients.delete(params[:ingredient])
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
		params.require(:recipe).permit(:name, :description, :picture, :time, :price)
	end

end
