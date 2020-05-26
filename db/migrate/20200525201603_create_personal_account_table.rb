class CreatePersonalAccountTable < ActiveRecord::Migration[5.2]
  def change
    create_table :personal_banks do |t|
      t.float :balance
      t.integer :daily_limit, :default => 5000
    end
  end
end
