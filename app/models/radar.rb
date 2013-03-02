class Radar < ActiveRecord::Base
  attr_accessible :event_id, :image, :time
  
  belongs_to :event
end
