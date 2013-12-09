class AddCreatorIdToLists < ActiveRecord::Migration
  def change
    add_column :lists, :creator_id, :integer
  end
end
