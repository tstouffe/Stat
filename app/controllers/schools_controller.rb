class SchoolsController < ApplicationController

	def new
		@profile = Profile.find(params[:profile_id])
		@school = School.new
	end
	
	def create
		@profile = Profile.find(params[:profile_id])
		@school = @profile.schools.create(params[:work].permit(:name, :title, :year))
		@school.save
		redirect_to profile_path(@profile)
	end
	
end
