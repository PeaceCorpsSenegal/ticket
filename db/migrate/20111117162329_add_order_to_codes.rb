class AddOrderToCodes < ActiveRecord::Migration
  def self.up
    add_column :codes, :order, :integer
  end

  def self.down
    remove_column :codes, :order
  end
end
