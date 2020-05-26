
class Merchant < ActiveRecord::Base
    has_many :joint_accounts
    has_many :pays, through: :payments
    has_many :business_accounts, through: :joint_accounts
end