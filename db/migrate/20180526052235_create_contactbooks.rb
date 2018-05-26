class CreateContactbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :contactbooks do |t|
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
