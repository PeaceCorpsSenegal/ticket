class AddColorToCodes < ActiveRecord::Migration
  def self.up
    add_column :codes, :color, :string
  end

  def self.down
    remove_column :codes, :color
  end
end
