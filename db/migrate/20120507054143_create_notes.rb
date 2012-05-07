class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.string :text
      t.integer :noteable_id
      t.string :noteable_type

      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
