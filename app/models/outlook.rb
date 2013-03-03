class Outlook < ActiveRecord::Base
  attr_accessible :cat, :day, :disc, :event_id, :hail, :init_date, :init_time, :prob, :risk, :torn, :wind
  
  belongs_to :event
end
