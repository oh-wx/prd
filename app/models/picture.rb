class Picture < ActiveRecord::Base
  attr_accessible :event_id, :filename
  
  belongs_to :event
end
