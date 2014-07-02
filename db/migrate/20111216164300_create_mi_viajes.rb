class CreateMiViajes < ActiveRecord::Migration
  def change
    create_table :mi_viajes do |t|
      t.integer :site_id
      t.integer :order_in_trip

      t.timestamps
    end
  end
end
