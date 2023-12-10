class AttendancesController  < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    attendance = @event.attendances.build(attendee: current_user)

    if attendance.save
      flash[:notice] = 'You are now attending this event.'
    else
      flash[:alert] = 'You are already attending this event.'
    end

    redirect_to @event
  end

  def destroy
    @event = Event.find(params[:event_id])
    @event.attendees.delete(current_user)
    redirect_to @event
  end
end
