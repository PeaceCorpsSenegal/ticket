class AddCommentsToUpdates < ActiveRecord::Migration
  def self.up
    add_column :updates, :comment, :string
  end

  def self.down
    remove_column :updates, :comment
  end
end
