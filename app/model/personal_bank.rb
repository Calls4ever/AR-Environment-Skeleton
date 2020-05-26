
class PersonalBank <ActiveRecord::Base
    has_many :joint_accounts
    has_many :consumers, through: :joint_accounts
    has_many :transfers, through: :payments
    has_many :pays, through: :payments
end