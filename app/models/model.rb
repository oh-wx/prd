class Model < ActiveRecord::Base
  attr_accessible :event_id, :hour, :init_date, :init_time, :type
  
  belongs_to :event
end
