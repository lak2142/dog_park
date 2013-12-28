class Owner < ActiveRecord::Base
	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :email

	has_many :owner_of_dogs,
		inverse_of: :owner,
		dependent: :destroy
end
