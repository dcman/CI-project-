class AddHashToTrips < ActiveRecord::Migration
  def self.up
    add_column :trips, :sum, :string
  end

  def self.down
    remove_column :trips, :sum
  end
end
