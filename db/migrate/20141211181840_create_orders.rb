class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string  :firstname
      t.string  :lastname
      t.string  :streetaddres
      t.string  :city
      t.string  :state
      t.integer :zip
      t.string :phonenumber
      t.integer :boxcount
      t.integer :ispaid,:default=>0
      t.references :user, index: true

      t.timestamps
    end
  end
end
