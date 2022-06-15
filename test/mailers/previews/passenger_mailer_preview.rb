# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
  def booking_email
    @booking = Booking.last
    @passenger = @booking.passengers.last
    PassengerMailer.with(passenger: @passenger, booking: @booking).booking_email
  end
end
