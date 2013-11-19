class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :neighborhood
      t.string :cuisine
      t.integer :price_range
      t.string :dining_style
      t.string :website
      t.string :email
      t.integer :phone_no
      t.string :hours
      t.string :special_meals
      t.string :description
      t.integer :capacity
      t.string :mon_open
      t.string :mon_close
      t.string :tue_open
      t.string :tue_close
      t.string :wed_open
      t.string :wed_close
      t.string :thu_open
      t.string :thu_close
      t.string :fri_open
      t.string :fri_close
      t.string :sat_open
      t.string :sat_close
      t.string :sun_open
      t.string :sun_close
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
