class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address

      t.timestamps null: false
    end
    add_index :customers, :email,  unique: true
  end
end
