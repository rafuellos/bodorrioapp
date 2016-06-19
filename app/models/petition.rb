class Petition < ActiveRecord::Base
	
	validates :name, presence: true 
	validates :description, presence: true

	def self.iron_find(id)
		where(id: id).first	
	end

	def self.last_created_petitions(number)
		order(created_at: :desc).limit(number)
	end
end
