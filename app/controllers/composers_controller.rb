class ComposersController < ApplicationController

	def index
		@composers = Composer.all
	end

	def show
		@composer = Composer.find(params[:id])
	end

	def new
		@composer = Composer.new
	end

	def create
		@composer = Composer.new(composer_params)
		if @composer.save
			redirect_to composers_path
		else
			render 'new'
		end
	end

	def edit
		@composer = Composer.find(params[:id])
	end

	def update
		@composer = Composer.find(params[:id])
		if @composer.update(composer_params)
			redirect_to composers_path
		else
			render 'edit'
		end
	end

	private

		def composer_params
			params[:composer].permit(:name_ja, :fullname_ja, :name_en, :fullname_en)
		end


end
