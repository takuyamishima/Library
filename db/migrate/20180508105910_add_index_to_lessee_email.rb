class AddIndexToLesseeEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :lessees, :email, unique: true
  end
end
