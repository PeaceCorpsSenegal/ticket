class RemoveOrderFromCodes < ActiveRecord::Migration
  def self.up
    remove_column :codes, :order
  end

  def self.down
    add_column :codes, :order, :integer
  end
end
