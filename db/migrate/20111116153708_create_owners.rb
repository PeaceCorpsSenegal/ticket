class CreateOwners < ActiveRecord::Migration
  def self.up
    create_table :owners do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :ticket_id
      t.integer :code_id

      t.timestamps
    end
  end

  def self.down
    drop_table :owners
  end
end
