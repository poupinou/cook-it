class IngredientsController < ApplicationController

	def index
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
		@value = params[:nom]

		
    respond_to do |f|
      f.js
      f.html 
    end
	end

	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(ingredients_params)
		if @ingredient.save
			redirect_to ingredients_path
		else
			render 'new'
		end
	end

	def edit
		@ingredient = Ingredient.find(params[:id])
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		@ingredient.update(ingredients_params)
		redirect_to ingredients_path
	end

	def destroy
		Ingredient.destroy(params[:id])
		redirect_to ingredients_path
	end


	private

	def ingredients_params
		params.require(:ingredient).permit(:name, :family, :picture, :price)
	end
end
