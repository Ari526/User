class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
