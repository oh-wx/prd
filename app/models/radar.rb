class Radar < ActiveRecord::Base
  attr_accessible :area, :date, :event_id, :image, :time
  
  belongs_to :event
end
