class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(book_id: params[:book_id])
    favorite.user_emai = current_user.email
    @booking = favorite
    
    if favorite.save
        BookingMailer.booking_mail(@booking).deliver  ##追記

    redirect_to books_url, notice: "#{favorite.book.book_name}を予約しました"
    end
  end

  def destroy
    favorite = current_user.favorites.find_by(book_id: params[:book_id]).destroy
    redirect_to books_url, notice: "#{favorite.book.book_name}の予約をキャンセルしました"
  end


end