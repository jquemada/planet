class AddPaperClip < ActiveRecord::Migration
  def self.up
    change_table :sites do |t|
      t.has_attached_file :imagen
    end
  end

  def self.down
    drop_attached_file :sites, :imagen
  end
end

