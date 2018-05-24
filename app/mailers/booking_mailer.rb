class BookingMailer < ApplicationMailer
def booking_mail(booking)
@booking = booking
@booking_mail = @booking.user.email
@booking_book = @booking.book.book_name
 mail to: @booking_mail, subject: "本の予約が完了しました"
end
end
