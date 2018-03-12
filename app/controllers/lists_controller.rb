class ListsController < ApplicationController

	def index
		@lists = List.find(user_id)
	end

	def new
		@list = List.where(user_id: params[:user_id], recipe_id: params[:recipe_id])
			@list.ingredient << Recipe.find(recipe_id).ingredients
			@list.save
	end

	def create
		@lists = List.new(params[:id])
	end

	def destroy
		List.destroy(params[:id])
	end

	def lists_params
		params.require(:list).permit(:price)
	end

end
