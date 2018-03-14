module ApplicationHelper

	def ingredients_params
		params.require(:ingredient).permit(:name, :family, :picture, :price)
	end

	def list_ings_params
		params.permit(:list_ing).permit(:quantity)
	end

	def recipes_params
		params.require(:recipe).permit(:name, :description, :picture, :time, :price, :user_id)
	end
end
