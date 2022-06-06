class EventsController < ApplicationController
  def create
    byebug
  end

  def show
    user = logged_in_user
    event = user.events.find(params[:id])
    if !!user && !!event
      day = event.day
      trips = event.trips
      render json: {event: event, day: day, trips: trips}
    else
      render json: {errors: "No Such Event For Given User"}, status: :unprocessable_entity
    end
  end

  def update
    byebug
  end

  def destroy
    byebug
  end

  private

  def event_params
    byebug
  end
end
