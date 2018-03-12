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
		@recipe_ing = @recipe.ingredients
		@ingredients = Ingredient.all
	end

	def post_add_ing_recipe
		@recipe = Recipe.find(params[:recipe])
		@recipe_ing = @recipe.ingredients
		@recipe_ing << Ingredient.find(params[:ingredient])
	end


	private

	def recipes_params
		params.require(:recipe).permit(:name, :description, :picture, :time, :price)
	end

end
