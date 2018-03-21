class QuotesController < ApplicationController

	def index
			@quotes = Quote.all
			@user = current_user
	end

	def show
		@quote = Quote.find(params[:id])
	end

	def new #AJAX
		@quote = Quote.new()

		respond_to do |f|
      f.js
      f.html
    end
	end

	def create
		@quote = Quote.new(quote_params)
		@quote.save

		@quotes = Quote.all # pour le fonctionnement en ajax

		respond_to do |f|
      f.js
      f.html
    end
	end

	def edit #AJAX
		@quote = Quote.find(params[:id])

		respond_to do |f|
      f.js
      f.html
    end
	end

	def update #AJAX
		@quote = Quote.find(params[:id])
		@quote.update(quote_params)

		@quotes = Quote.all # pour le fonctionnement en ajax
		respond_to do |f|
      f.js
      f.html
    end
	end

	def destroy #AJAX
		Quote.destroy(params[:id])

		@quotes = Quote.all # pour le fonctionnement en ajax

		respond_to do |f|
      f.js
      f.html
    end
	end

	def quote_params
		params.require(:quote).permit(:corps, :source)
	end
end
