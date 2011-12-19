class Site < ActiveRecord::Base
    belongs_to :type
	has_many :trip_sites
	has_many :trips, :through => :trip_sites
end
