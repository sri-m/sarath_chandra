class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :cell
      t.string :email
      t.string :age
      t.text :address

      t.timestamps null: false
    end
  end
end
