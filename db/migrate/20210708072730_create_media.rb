class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :name
      t.string :email
      t.string :title

      t.timestamps null: false
    end
  end
end
