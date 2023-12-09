class AttendanceController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event_attendees << @current_user
    redirect_to @event
  end
end
