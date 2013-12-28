class RenameOwnerOfDogs < ActiveRecord::Migration
  def change
  	rename_table :owner_of_dog, :owner_of_dogs
  end
end
