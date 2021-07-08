class AddUsertestsIdToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :usertests_id, :integer
  end
end
