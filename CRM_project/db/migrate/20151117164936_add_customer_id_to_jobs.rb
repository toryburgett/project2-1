class AddCustomerIdToJobs < ActiveRecord::Migration
  def change
    change_table :jobs do |t|
      t.integer :customer_id
    end
  end
end
