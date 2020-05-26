class Payment<ActiveRecord::Base
    
    belongs_to :joint_account
    belongs_to :transfer
    belongs_to :pay

end