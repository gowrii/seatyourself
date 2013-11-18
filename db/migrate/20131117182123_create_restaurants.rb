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



      t.timestamps
    end
  end
end
