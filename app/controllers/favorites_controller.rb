class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.create(book_id: params[:book_id])
    redirect_to books_url, notice: "#ブログをお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(book_id: params[:book_id]).destroy
    redirect_to books_url, notice: "#ブログをお気に入り解除しました"
  end

end