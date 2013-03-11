class OhWxController < ApplicationController
  def Home
	@event = Event.last			#.first
	#@models = @event.models
	#@outlooks = @event.outlooks #where(:event_id => "1")
	#@mesos = @event.mesos 		#where(:event_id => "1")
	#@wws = @event.wws
	#@radars = @event.radars
	
	
  end

  def WxEvents
  end

  def Images
	#@pictures = @event.Pictures
  end

  def L_O_W
  end

  def About
  end

  def References
  end
end
