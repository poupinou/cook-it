class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		@recipe.save
	end

	def edit
		@recipe = Reccipe.find(params[:id])
	end

	def destroy
		Recipe.destroy(params[:id])
	end

	def recipe_params
		params.require(:recipe).permit(:title, :description, :picture, :body, :time, :price)
	end

end
