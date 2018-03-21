class FiltreController < ApplicationController

	def create

	end

	def destroy #AJAX
		@recipe = Recipe.find_by_id(Tagrecipe.find(params[:id]).recipe_id)
		@tagrecipes = Tagrecipe.where(recipe_id: @recipe.id)
		Tagrecipe.destroy(params[:id])

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def tagrecipe_params
		params.permit(:tag_id, :recipe_id)
	end
end
