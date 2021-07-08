class CreateQues < ActiveRecord::Migration
  def change
    create_table :ques do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
