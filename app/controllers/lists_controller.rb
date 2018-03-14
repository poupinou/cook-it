class ListsController < ApplicationController

	def add_to_list
		@user = current_user
		@recipe = Recipe.find(params[:recipe_id])

		List.create(user_id: @user.id, recipe_id: @recipe.id)

		IngredientToRecipe.where(recipe_id: @recipe.id).each do |ing|
			if ListIng.exists?(user_id: @user.id, ingredient_id: ing.ingredient_id)
				list = ListIng.find_by(user_id: @user.id, ingredient_id: ing.ingredient_id)
				list.quantity += ing.quantity
				list.save
			else
				ListIng.create(user_id: @user.id, ingredient_id: ing.ingredient_id, quantity: ing.quantity)
			end
		end
	end

	private

	def list_ings_params
		params.permit(:list_ing).permit(:quantity)
	end




=begin

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

=end

end
