class AddPermissionsToCodes < ActiveRecord::Migration
  def self.up
    add_column :codes, :sender, :boolean
    add_column :codes, :receiver, :boolean
    add_column :codes, :all, :boolean
  end

  def self.down
    remove_column :codes, :all
    remove_column :codes, :receiver
    remove_column :codes, :sender
  end
end
