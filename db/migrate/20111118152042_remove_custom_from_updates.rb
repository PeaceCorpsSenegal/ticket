class RemoveCustomFromUpdates < ActiveRecord::Migration
  def self.up
    remove_column :updates, :custom
  end

  def self.down
    add_column :updates, :custom, :string
  end
end
