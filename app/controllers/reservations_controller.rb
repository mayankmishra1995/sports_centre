class ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[ update destroy ]

  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created, location: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end

    #To define the payload 

    # court_type = params[:court_type]
    # date = params[:date]
    # time = params[:time]
    # notes = params[:notes]

    #response
    # {
    # "court_type": "Tennis",
    # "date": "2022-06-01",
    # "time": "12:00",
    # "notes": "Single hour booking"
    # }

  end

  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.(strong params)
    def reservation_params
      params.require(:reservation).permit(:court_id, :start_time, :end_time, :notes)
    end
end
