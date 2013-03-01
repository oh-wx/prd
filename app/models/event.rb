class Event < ActiveRecord::Base
  attr_accessible :date, :disc
  
  #has_many :pictures, :models, :outlooks, :mesos, :wws, :radars
end
