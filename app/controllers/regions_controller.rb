class RegionsController < ApplicationController

	def index
		@regions = Region.all
	end

	def new
		@region = Region.new
	end

	def create
		@region = Region.new(region_params)
		@region.save
		flash[:success] = "Region Created"
		redirect_to regions_path
	end

	private

	def region_params
		params.require(:region).permit(:name)
	end

end
