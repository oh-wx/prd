class Model < ActiveRecord::Base
  attr_accessible :agency, :event_id
  
  belongs_to :event
end
