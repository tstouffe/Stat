class WorksController < ApplicationController

	def new
		@profile = Profile.find(params[:profile_id])
		@work = Work.new
	end
	
	def create
		@profile = Profile.find(params[:profile_id])
		@work = @profile.works.create(params[:work].permit(:name, :title, :year))
		@work.save
		redirect_to profile_path(@profile)
	end
	
	
end
