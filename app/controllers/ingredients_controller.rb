class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredient.all
	end

	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(ingredients_params)
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def destroy
		Ingredient.destroy(params[:id])
	end

	def ingredients_params
		params.require(:ingredient).permit(:name, :type, :picture, :price)
	end
end
