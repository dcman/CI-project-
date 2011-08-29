class CreateParticeipants < ActiveRecord::Migration
  def self.up
    create_table :particeipants do |t|
      t.string :email
      t.integer :trip_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end

  def self.down
    drop_table :particeipants
  end
end
