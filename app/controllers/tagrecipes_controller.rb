class TagrecipesController < ApplicationController

	def new
		if  user_signed_in? == false
			redirect_to root_path
		end
		@recipe_id = params[:recipe_id]
		@tagrecipe = Tagrecipe.new()
	end

	def create
		if Tagrecipe.exists?(recipe_id: params[:recipe_id], tag_id: params[:tag_id]) == false
			@tagrecipe = Tagrecipe.new(tagrecipe_params)
			@tagrecipe.save
		else
			flash[:danger] ="ok ok on a compris"
		end
		redirect_to recipe_path(params[:recipe_id])
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
