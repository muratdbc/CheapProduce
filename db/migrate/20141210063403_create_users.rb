class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :phonenumber
      t.string :streetaddres
      t.integer :zipcode
      t.string :state
      t.string :city

      t.timestamps
    end
  end
end
