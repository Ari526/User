class CreateUsertests < ActiveRecord::Migration
  def change
    create_table :usertests do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
