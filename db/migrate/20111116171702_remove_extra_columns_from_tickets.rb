class RemoveExtraColumnsFromTickets < ActiveRecord::Migration
  def self.up
    remove_column :tickets, :from_id
    remove_column :tickets, :to_id
  end

  def self.down
    add_column :tickets, :to_id, :integer
    add_column :tickets, :from_id, :integer,
  end
end
