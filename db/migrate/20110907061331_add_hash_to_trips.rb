class AddHashToTrips < ActiveRecord::Migration
  def self.up
    add_column :trips, :hash, :string
  end

  def self.down
    remove_column :trips, :hash
  end
end
