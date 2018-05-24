class AddUserEmailToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :user_emai, :string
  end
end
