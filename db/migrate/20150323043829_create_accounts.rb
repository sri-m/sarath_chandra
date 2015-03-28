class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :customer_id
      t.string :acc_name
      t.string :acc_num
      t.string :branch

      t.timestamps null: false
    end
  end
end
