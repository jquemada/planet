require 'paperclip'
class Site < ActiveRecord::Base
    belongs_to :type
    has_many   :selected, :dependent => :destroy
    has_attached_file :imagen, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
