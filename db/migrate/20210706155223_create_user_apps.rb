class CreateUserApps < ActiveRecord::Migration
  def change
    create_table :user_apps do |t|
      t.string :name
      t.text :email

      t.timestamps null: false
    end
  end
end
