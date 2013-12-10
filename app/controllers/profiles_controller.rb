class ProfilesController < ApplicationController

	before_filter :authenticate_user!, :except => [:show, :index] 
	
	def index
		@profiles = Profile.all
	end
	
	def new
		@profile = Profile.new
	end
	
	def create
		@profile = Profile.new(params[:profile].permit(:name, :phone, :address, :email))
		@profile.save
		redirect_to @profile
	end
	
	def show
		@profile = Profile.find(params[:id])
		
	end
	
	def edit
		@profile = Profile.find(params[:id])
	end
  
	def update
		@profile = Profile.find(params[:id])
		if @profile.update(params[:profile].permit(:name, :phone, :address, :email))
			redirect_to @profile
		else
			render 'edit'
		end
	end
 
	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to posts_path
	end
	
	private 
		def profile_params
			params.require(:profile).permit(:name, :phone, :address, :email)
		end
	
end
