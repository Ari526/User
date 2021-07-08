class CreateAsks < ActiveRecord::Migration
  def change
    create_table :asks do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
