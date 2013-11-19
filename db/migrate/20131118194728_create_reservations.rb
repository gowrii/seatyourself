class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
    	t.datetime :reserve_time
    	t.integer :seats

    	t.integer :restaurant_id
    	t.integer :user_id


      t.timestamps
    end
  end
end
