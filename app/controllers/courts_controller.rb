class CourtsController < ApplicationController

  before_action :set_court, only: [:book]
  
  def index
    @court = Court.all
    if params[:date].present? && parms[:time].present?
      date = DateTime.parse("#{params[:date]} #{params[:time]}")

      #retrieve the courts which are available for a specific date and time
      @courts = @courts.joins(:reservations).where("reservations.start_time >= ? && reservations.end_time < ?", date, date+1.hour).group("courts.id").having("count(reservations.id)=0")
    end
    render json: @courts
  end

  #To make it a bit simpler we can either approach to this use case also 

  # def available_courts

    # retrieves all the courts that have no reservations for the specified date
  #   date = params[:date].to_datetime
  #   @courts = Court.includes(:reservations).where("reservations.start_time >= ? and reservations.start_time < ?", date, date + 1.hour).group("courts.id").having("count(reservations.id) = 0")
  #   render json: @courts
  # end

  # def book

  #   creates a new reservation for the specified court if it's available.
  #   reservation = @court.reservations.new(reservation_params)
  #   if reservation.save
  #     render json: { message: "Reservation successfully created" }, status: :created
  #   else
  #     render json: { error: reservation.errors.full_messages }, status: :unprocessable_entity
  #   end
  # end

  # private

  # def set_court
  #   @court = Court.find(params[:id])
  # end

  # def reservation_params
  #   parms.require(reservation).permit(:start_time, :notes)
  # end

end
