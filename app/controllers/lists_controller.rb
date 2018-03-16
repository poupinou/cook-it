class ListsController < ApplicationController

	def add_to_list #permet d'ajouter à sa liste de course
		@user = current_user #on viens recupéré le user connété
		@recipe = Recipe.find(params[:recipe_id]) #on viens récupéré la recette ciblé par l'événement

		List.create(user_id: @user.id, recipe_id: @recipe.id) #on crée un liste de recette

		IngredientToRecipe.where(recipe_id: @recipe.id).each do |ing| #on viens boucler sur tous les ingrédient de nôtre recette
			if ListIng.exists?(user_id: @user.id, ingredient_id: ing.ingredient_id) #si  l'élément existe déja dans notre liste?
				list = ListIng.find_by(user_id: @user.id, ingredient_id: ing.ingredient_id) #on pointe dessus
				list.quantity += ing.quantity # et on augmente la quantité
				list.save
			else
				ListIng.create(user_id: @user.id, ingredient_id: ing.ingredient_id, quantity: ing.quantity) # sinon n la créer
			end
		end
	end

	def reset_list_ing
		user = current_user
		list_ing = ListIng.where(user_id: user.id)
		list_recipe = List.where(user_id: user.id)

		ListIng.destroy(list_ing.ids)
		List.destroy(list_recipe.ids)

		redirect_to root_path
	end

end