class ListesController < ApplicationController

	def index
		@liste = Listes.all
	end

	def new
		@liste = Liste.new()
	end

	def create
		@liste = Liste.new(params[:id])
	end

	def destroy
		Listes.destroy(params[:id])
	end

	def listes_params
		params.require(:liste).permit(:prix)
	end
	
end


