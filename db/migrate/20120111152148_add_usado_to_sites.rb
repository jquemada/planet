class AddUsadoToSites < ActiveRecord::Migration
  def change
    add_column :sites, :usado, :integer
  end
end
