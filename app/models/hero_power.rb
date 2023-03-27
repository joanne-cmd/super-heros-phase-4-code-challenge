class HeroPower < ApplicationRecord
    belongs_to :power
    belongs_to :hero

    
    validates :strength, inclusion: { in: %w[Strong Weak Average], message: "%{value} is not a valid strength"}
end
