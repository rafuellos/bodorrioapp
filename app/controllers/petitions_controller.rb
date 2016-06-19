class PetitionsController < ApplicationController

	def home
		@petition = Petition.new
		render 'home'
		
	end

	def list
		@petitions = Petition.order(description: :asc)
		@petition = Petition.last
		
		render 'thanks'
	end

	def new
		@petition = Petition.new	
	end

	def create

		@petition = Petition.new petition_params
			if @petition.save
			  redirect_to '/thanks'
			else
			  redirect_to '/petitions/new'
			end
	end
	

	private
	def petition_params
		params.require(:petition).permit(:name, :description)
	end

end
