class Site < ActiveRecord::Base
    belongs_to :type
    has_many   :selected
    has_many   :viajes
end
