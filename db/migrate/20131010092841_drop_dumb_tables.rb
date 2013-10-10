class DropDumbTables < ActiveRecord::Migration
  def change
    drop_table :list_items
    drop_table :views
  end
end
