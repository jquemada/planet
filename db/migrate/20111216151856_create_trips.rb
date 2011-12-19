class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :site_id
      t.integer :position

      t.timestamps
    end
  end
end
