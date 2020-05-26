class CreateBusinessAccountTable < ActiveRecord::Migration[5.2]
  def change
    create_table :business_accounts do |t|
      t.float :balance 
      t.integer :daily_limit, :default => 100000
    end
    
  end
end
