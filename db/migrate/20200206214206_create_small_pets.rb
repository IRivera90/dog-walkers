class CreateSmallPets < ActiveRecord::Migration[5.2]
  def change
    create_table :small_pets do |t|
      t.string :name
      t.string :animal

      t.timestamps
    end
  end
end
