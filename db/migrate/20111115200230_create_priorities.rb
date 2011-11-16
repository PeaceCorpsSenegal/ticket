class CreatePriorities < ActiveRecord::Migration
  def self.up
    create_table :priorities do |t|
      t.integer :level
      t.string :priority
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :priorities
  end
end
