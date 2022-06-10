class DaysController < ApplicationController
  def create
    user = current_user
    byebug
  end

  def show
    day = Day.find(params[:id])
    if !!day
      vacation = day.vacation
      events = day.events
      trips = day.trips
      render json: {
        day: day, 
        vacation: vacation, 
        events: events,
        trips: trips
      }
    else
      render json: {errors: "No Information Available"}, status: :unprocessable_entity
    end
  end

  def update
    byebug
  end

  def destroy
    byebug
  end
end
