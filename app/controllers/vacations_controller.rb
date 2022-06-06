class VacationsController < ApplicationController
  def create
    byebug
  end

  def show
    user = logged_in_user
    vaction = user.vacations.find(params[:id])
    if !!vacation
      days = vacation.days
      trips = vacation.trips
      events = vacation.events
      render json: {
        vacatiion: vacation,
        days: days,
        events: events,
        trips: trips
      }
    else
      render json: {errors: "No Such Vacation For Given User"}, status: unprocessable_entity
    end
  end

  def update
    byebug
  end

  def destroy
    byebug
  end

  private

  def vacation_params
    byebug
  end
end
