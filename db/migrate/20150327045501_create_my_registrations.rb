class CreateMyRegistrations < ActiveRecord::Migration
  def change
    create_table :my_registrations do |t|
      t.string :name
      t.string :email
      t.string :cell
      t.string :category
      t.string :gender
      t.text :subject

      t.timestamps null: false
    end
  end
end
