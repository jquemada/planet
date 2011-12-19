class AddNumberToTripSite < ActiveRecord::Migration
  def change
    add_column :trip_sites, :number, :integer
  end
end
