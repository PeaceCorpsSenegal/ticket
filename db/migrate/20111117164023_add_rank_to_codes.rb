class AddRankToCodes < ActiveRecord::Migration
  def self.up
    add_column :codes, :rank, :integer
  end

  def self.down
    remove_column :codes, :rank
  end
end
