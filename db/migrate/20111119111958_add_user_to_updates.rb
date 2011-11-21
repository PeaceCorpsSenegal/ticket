class AddUserToUpdates < ActiveRecord::Migration
  def self.up
    add_column :updates, :user_id, :integer
  end

  def self.down
    remove_column :updates, :user_id
  end
end
