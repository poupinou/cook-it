class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredients.all
	end

	def new
		@ingredient = Ingredients.new
	end

	def create
		@ingredient = Ingredients.new(ingredients_params)
	end

	def edit
		@ingredient = Ingredients.find(params[:id])
	end

	def destroy
		Ingredients.destroy(params[:id])
	end

	def ingredients_params
		params.require(:ingredient).permit(:name, :type, :photo, :prix)
	end
end
