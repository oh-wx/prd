class OhWxController < ApplicationController
  def Home
	@event = Event.last			#.first
	@models = @event.models
	@outlooks = @event.outlooks

  end

  def WxEvents
	@event = Event.last			#.first
	@models = @event.models
	@outlooks = @event.outlooks
  end

  def Images
	@event = Event.last			#.first
	@pictures = @event.pictures
  end

  def L_O_W
  end

  def About
  end

  def References
  end
end
