class Model < ActiveRecord::Base
  attr_accessible :event_id, :hour
  
  belongs_to :event
end
