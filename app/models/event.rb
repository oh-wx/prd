class Event < ActiveRecord::Base
  attr_accessible :date, :threat
  
  has_many :models
  has_many :outlooks
  has_many :mesos
  has_many :wws
  has_many :pictures
end
