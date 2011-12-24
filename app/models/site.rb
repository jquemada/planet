class Site < ActiveRecord::Base
has_attached_file:image
belongs_to:type
has_many:selected

end
