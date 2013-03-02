class Outlook < ActiveRecord::Base
  attr_accessible :date, :disc, :event_id, :hail, :time, :torn, :wind
  
  belongs_to :event
end
