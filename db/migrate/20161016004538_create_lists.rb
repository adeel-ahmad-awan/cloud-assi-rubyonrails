class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :firstname
      t.string :lastname
      t.string :phonenum
      t.string :email
      t.string :address
      t.string :rsvp
      t.string :comments

      t.timestamps null: false
    end
  end
end
