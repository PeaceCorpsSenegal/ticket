class CreateUpdates < ActiveRecord::Migration
  def self.up
    create_table :updates do |t|
      t.integer :ticket_id
      t.integer :code_id
      t.string :custom

      t.timestamps
    end
  end

  def self.down
    drop_table :updates
  end
end
