class Trip < ActiveRecord::Base
	has_many :trip_sites
	has_many :sites, :through => :trip_sites

	def add_site(site)
		TripSite.create(:trip_id => self.id, :site_id => site.id, :number => self.sites.count)
	end
end
