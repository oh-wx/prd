class Event < ActiveRecord::Base
  attr_accessible :date, :disc
  
  has_many :models
  has_many :outlooks
  has_many :mesos
  has_many :wws
  has_many :radars
  has_many :pictures
  has_many :discussions
end
