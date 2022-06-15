class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    params[:passengers].to_i.times { @booking.passengers.build }
    @flight = Flight.find(params[:flight_id])
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)

    respond_to do |format|
      if @booking.save
        @booking.passengers.each {|passenger| PassengerMailer.with(passenger: passenger, booking: @booking).booking_email.deliver_now! }
        format.html { redirect_to booking_url(@booking), notice: "Flight was successfully booked." }
        format.json { render :index, status: :created, location: @booking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end

  end


  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
