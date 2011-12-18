class Selected < ActiveRecord::Base
    belongs_to  :trip
    belongs_to  :site
end
