class Trip < ActiveRecord::Base
    has_many  :selecteds, :dependent => :destroy
end
