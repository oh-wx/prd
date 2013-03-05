class Ww < ActiveRecord::Base
  attr_accessible :event_id, :number
  
  belongs_to :event
end
