class CreateTickets < ActiveRecord::Migration
  def self.up
    create_table :tickets do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :ref_id
      t.integer :category_id
      t.string :title
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :tickets
  end
end
