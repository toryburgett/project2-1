class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :technician
      t.string :brand
      t.string :model_num
      t.string :serial_num
      t.date :purchase_date
      t.date :scheduled_date
      t.string :description
      t.string :part
      t.decimal :charge
      t.decimal :payment
      t.decimal :balance
      t.timestamps null:false
      t.string :note

    end
  end
end
