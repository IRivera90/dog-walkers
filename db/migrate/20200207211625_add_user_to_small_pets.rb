class AddUserToSmallPets < ActiveRecord::Migration[5.2]
  def change
    add_reference :small_pets, :user, foreign_key: true
  end
end
