class AddTimesColumnsToSite < ActiveRecord::Migration
   def self.up
    add_column :sites, :added_times, :integer
    
  end

  def self.down
    remove_column :sites, :added_time
    
  end
end
