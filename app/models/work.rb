class Work < ActiveRecord::Base

	belongs_to :profile
	
	has_many :duties, dependent: :destroy
		has_many :descriptions, through: :duties
	
end
