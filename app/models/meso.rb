class Meso < ActiveRecord::Base
  attr_accessible :disc, :event_id, :image, :number
  
  belongs_to :event
end
