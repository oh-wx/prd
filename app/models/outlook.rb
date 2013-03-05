class Outlook < ActiveRecord::Base
  attr_accessible :event_id, :risk
  
  belongs_to :event
end
