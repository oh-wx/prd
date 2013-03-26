class Picture < ActiveRecord::Base
  attr_accessible :event_id, :url
  
  belongs_to :event
end
