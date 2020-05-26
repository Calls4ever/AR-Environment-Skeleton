class UpdateWholeDatabase < ActiveRecord::Migration[5.2]
  def change
    drop_table :users
    drop_table :bank_accounts
    drop_table :bank_transaction
    add_column :transfers, :amount, :integer
    add_column :transfers, :transaction_date, :timestamps
  end
end
