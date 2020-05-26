
class Transfer<ActiveRecord::Base
    has_many :payments
    has_many :joint_accounts, through: :payments
    has_many :consumers, through: :joint_accounts
    has_many :personal_accounts, through: :joint_accounts
end