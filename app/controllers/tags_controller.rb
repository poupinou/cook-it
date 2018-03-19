class TagsController < ApplicationController
	
	def index
			@tags = Tag.all
	end

	def new #AJAX
		@tag = Tag.new()

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def create
		@tag = Tag.new(tag_params)
		@tag.save
		
		@tags = Tag.all # pour le fonctionnement en ajax

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def edit #AJAX
		@tag = Tag.find(params[:id])

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def update #AJAX
		@tag = Tag.find(params[:id])
		@tag.update(tag_params)

		@tags = Tag.all # pour le fonctionnement en ajax
		respond_to do |f|
      f.js
      f.html 
    end
	end

	def destroy #AJAX
		Tag.destroy(params[:id])

		@tags = Tag.all # pour le fonctionnement en ajax

		respond_to do |f|
      f.js
      f.html 
    end
	end

	def tag_params
		params.require(:tag).permit(:name)
	end
end
