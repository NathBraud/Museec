class BandsController < ApplicationController
before_action :find_band, only: [:show, :edit, :update, :destroy]

	def index
		@bands = Band.all.sort_by { |band| band.name }
	end

	def new
		@band = Band.new
	end

	def create
		@band = Band.new(band_params)


		if @band.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def show
	end

	def edit
		
	end


	def update	
		if @band.update(band_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	def destroy
		@band.destroy
		redirect_to root_path
	end

	private

		def band_params
			params.require(:band).permit(:name, :best_track, :description, :image, :from_year, :to_year)
		end

		def find_band
			@band = Band.find(params[:id])
		end
end
