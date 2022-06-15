class PassengerMailer < ApplicationMailer
  default from: 'bookings@fakeflights.com'

  def booking_email

    @passenger = params[:passenger]
    @booking = params[:booking]

    mail(to: @passenger.email, subject: 'Booking Confirmation Email')
  end
end
