class CreateJointAccountTable < ActiveRecord::Migration[5.2]
  def change
    create_table :joint_accounts do |t|
      t.integer :consumer_id
      t.integer :merchant_id
      t.integer :personal_account_id
      t.integer :business_account_id
    end
  end
end
