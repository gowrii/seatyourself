class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :postal_code
      t.string :province
      t.integer :telephone_no

      t.timestamps
    end
  end
end
