class RecettesController < ApplicationController

	def index
		@recettes = Recettes.all
	end

	def new
		@recette = Recettes.new()
	end

	def create 
		@recette = Recettes.new(recette_params)
		@recette.save
		redirect_to recette_path
	end
	
	def edit
		@recette = Recettes.find(params[:id])
	end

	def destroy
		recette.destroy(params[:id])
		redirect_to home_path
	end

	def recette_params
		params.require(:recette).permit(:name, :description, :photo, :body, :temps, :price)
	end

end
