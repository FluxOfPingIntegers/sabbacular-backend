class TripsController < ApplicationController
  def create
    byebug
  end

  def show
    user = logged_in_user
    trip = user.trips.find(params[:id])
    if !!trip
      day = trip.day
      event = trip.event
      vacation = trip.vacation
      render json: {
        trip: trip,
        day: day,
        event: event,
        vacation: vacation
      }
    else
      render json: {errors: "No Such Trip For Given User"}, status: :unprocessable_entity
    end
  end

  def update
    byebug
  end

  def destroy
    byebug
  end

  private

  def trip_params
    byebug
  end
end
