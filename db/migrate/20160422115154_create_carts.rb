class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :delivery_address
      t.string :email
      t.string :session_id
      t.boolean :paid

      t.timestamps null: false
    end
  end
end
