class Dog < ActiveRecord::Base
	validates_presence_of :name

	has_many :owner_of_dogs,
		inverse_of: :dog,
		dependent: :destroy
end
