class CreateTripSites < ActiveRecord::Migration
  def change
    create_table :trip_sites do |t|
      t.integer :trip_id
      t.integer :site_id
	  t.integer :number

      t.timestamps
    end
  end
end
