
class Pay<ActiveRecord::Base
    has_many :payments
    has_many :joint_accounts, through: :payments
    has_many :merchants, through: :joint_accounts
    has_many :consumers, through: :joint_accounts
    has_many :personal_banks, through: :joint_accounts
    has_many :business_accounts, through: :joint_accounts
end