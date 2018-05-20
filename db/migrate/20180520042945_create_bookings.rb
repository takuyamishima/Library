class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
