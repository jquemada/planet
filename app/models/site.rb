class Site < ActiveRecord::Base
    belongs_to :type
    has_one :trip
end
