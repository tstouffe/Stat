class School < ActiveRecord::Base
	
	belongs_to :profile
	
	has_many :courses, dependent: :destroy
		has_many :names, through: :courses
		has_many :types, through: :courses
		has_many :descriptions, through: :courses
end
