class ProficienciesController < ApplicationController

def new
		@profile = Profile.find(params[:profile_id])
		@proficiency = Proficiency.new
	end
	
	def create
		@profile = Profile.find(params[:profile_id])
		@proficiency = @profile.proficiencies.create(params[:work].permit(:name, :title, :year))
		@proficiency.save
		redirect_to profile_path(@profile)
	end
	
end
