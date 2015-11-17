class ChangeJobs < ActiveRecord::Migration
  def change
    change_table :jobs do |t|
      t.remove :charge, :payment, :balance, :part
      t.string :warranty, :status, :performed
    end
  end
end
