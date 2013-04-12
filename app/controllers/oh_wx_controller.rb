class OhWxController < ApplicationController
  def Home
	@event = Event.last			#.first
	@models = @event.models
	@outlooks = @event.outlooks
  end

  def nextEvent(current)
		if (Event.find(current+1))
			@event = Event.find(current+1)
			@models = @event.models
			@outlooks = @event.outlooks
		else
			@event = Event.first
			@models = @event.models
			@outlooks = @events.outlooks
		end
	end
	
	def prevEvent(current)
		if (Event.find(current-1))
			@event = Event.find(current-1)
			@models = @event.models
			@outlooks = @event.outlooks
		else
			@event = Event.last
			@models = @event.models
			@outlooks = @event.outlooks
		end
	end
	
	def firstEvent
		@event = Event.first
		@models = @event.models
		@outlooks = @event.outlooks
	end
	
	def lastEvent
		@event = Event.last
		@models = @event.models
		@outlooks = @event.outlooks
	end
  
  def WxEvents
	@event = Event.last			#.first
	@models = @event.models
	@outlooks = @event.outlooks
  end

  def Images
	#@event = Event.last			#.first
	#@pictures = @event.pictures
  end

  def L_O_W
  end

  def About
  end

  def References
  end
end
