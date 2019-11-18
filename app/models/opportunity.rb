class Opportunity < ApplicationRecord
    belongs_to :contact
    has_many :todolists
    has_many :notes
    
    scope :opp_owner, lambda { where("user_id = ?", 1) }
end