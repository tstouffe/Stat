class Profile < ActiveRecord::Base
  
  has_one :user

	has_many :works, dependent: :destroy
		has_many :names, through: :works
		has_many :titles, through: :works
		has_many :years, through: :works
		has_many :duties, through: :works
			has_many :descriptions, through: :duties

	has_many :schools, dependent: :destroy
		has_many :names, through: :schools
		has_many :degrees, through: :schools
		has_many :years, through: :schools
		has_many :courses, through: :schools
			has_many :names, through: :courses
			has_many :types, through: :courses
			has_many :descriptions, through: :courses
			
	has_many :proficiencies, dependent: :destroy
		has_many :names, through: :proficiencies
		has_many :types, through: :proficiencies
	
end
