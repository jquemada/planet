class CreateViajes < ActiveRecord::Migration
  def change
    create_table :viajes do |t|
      t.integer :site_ide
      t.integer :pos

      t.timestamps
    end
  end
end
