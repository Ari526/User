class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.string :string
      t.string :title

      t.timestamps null: false
    end
  end
end
