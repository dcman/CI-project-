class ChangeColumn < ActiveRecord::Migration
  def self.up
    change_column :trips, :description, :text
  end

  def self.down
    change_column :trips, :description, :string
  end
end
