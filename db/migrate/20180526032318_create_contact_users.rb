class CreateContactUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :contact_users do |t|
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
