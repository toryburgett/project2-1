class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_num
      t.string :phone_num2
      t.string :address
    end
  end
end
