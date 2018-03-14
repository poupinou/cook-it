class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredient.all
		@value = ""
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
		@ingredient.save
		@ingredients = Ingredient.all
		respond_to do |f|
      f.js
      f.html 
    end
	end

	def edit
		@ingredient = Ingredient.find(params[:id])

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def update
		@ingredient = Ingredient.find(params[:id])
		@ingredient.update(ingredients_params)
		@ingredients = Ingredient.all
		respond_to do |f|
      f.js
      f.html 
    end
	end

	def destroy
		Ingredient.destroy(params[:id])
		@ingredients = Ingredient.all
		respond_to do |f|
      f.js
      f.html 
    end
	end


	private

	def ingredients_params
		params.require(:ingredient).permit(:name, :family, :picture, :price)
	end
end
