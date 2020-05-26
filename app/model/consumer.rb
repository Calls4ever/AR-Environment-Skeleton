
class Consumer<ActiveRecord::Base
    has_many :joint_accounts
    has_many :payments, through: :joint_accounts
    has_many :personal_banks, through: :joint_accounts
    has_many :transfers, through: :payments
    has_many :pays, through: :payments
    has_many :business_accounts, through: :joint_accounts

    def self.list
        Consumer.all
    end

    def self.consumer_count
        list.count
    end

    def self.consumer_names
        names=[]
        list.each do |con|
            names<<con.name
        end
        names
    end

    def pay_bill(acount, amount)
        
       jt1=JointAccount.find_by(consumer_id: self.id)
        jt1.personal_bank.balance -=amount
        jt1.personal_bank.save

        jt2=JointAccount.find_by(business_account_id: acount.id)
        jt2.business_account.balance +=amount
        jt2.business_account.save
        
    end

    def transfers_fund(acount,amount)
        jt1=JointAccount.find_by(consumer_id: self.id)
        jt1.personal_bank.balance -=amount
        jt1.personal_bank.save

        jt2=JointAccount.find_by(consumer_id: acount.id)
        jt2.personal_bank.balance -=amount
        jt2.personal_bank.save
    end

    def self.split_pay(consumers, payee, amount)
        num_of_people=consumers.count
        payable=amount/num_of_people
        consumers.each do |key, value|
            value.pay_bill(payee, payable)
        end
    end





end