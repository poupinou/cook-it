class ListsController < ApplicationController

	def index
		@lists = List.all
	end

	def new
		@list = List.new
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
