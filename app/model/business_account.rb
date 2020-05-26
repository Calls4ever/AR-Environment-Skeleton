
class BusinessAccount<ActiveRecord::Base
    has_many :joint_accounts
    has_many :payments, through: :joint_accounts
    has_many :merchants, through: :joint_accounts
    has_many :pays, through: :payments
end