class OhWxController < ApplicationController
  def Home
	@event = Event.find(1)
	@outlook = Outlook.find(1) #where(:event_id => "1")
	@meso = Meso.find(1) #where(:event_id => "1")
	
  end

  def WxEvents
  end

  def Images
  end

  def L_O_W
  end

  def About
  end

  def References
  end
end
