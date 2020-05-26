class RenameJointAccountColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :joint_accounts, :personal_account_id, :personal_bank_id
  end
end
