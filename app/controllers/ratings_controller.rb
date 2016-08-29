class RatingsController < ApplicationController
  before_action :set_event

  def create
    @event.ratings.create!(rating_params)
    redirect_to event_path(@event), flash: {notice: 'Thanks for the rating!'}
  end

  private
  def set_event
    @event = Event.find(params[:event_id])
  end

  def rating_params
    params.require(:rating).permit(:rating)
  end

end
