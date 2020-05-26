class JointAccount < ActiveRecord::Base
    belongs_to :merchant
    belongs_to :consumer
    belongs_to :personal_bank
    belongs_to :business_account
    has_many :payments
    has_many :transfers, through: :payments
    has_many :pays, through: :payments

    def self.merchant_bankers
        ac=[]
        JointAccount.all.each do |jt|
            ac<<jt.merchant
            
        end
        ac
    end

end