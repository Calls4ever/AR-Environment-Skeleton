class CreatePaymentTable < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :merchant_id
      t.integer :consumer_id
      t.integer :transfer_id
      t.integer :pay_id
  end
end
