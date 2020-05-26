class CreateBankTransactionTable < ActiveRecord::Migration[5.2]
  def change
  create_table :bank_transaction do |t|
    t.integer :amount
    t.boolean :pending
  end
  end
end
