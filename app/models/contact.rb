class Contact < ApplicationRecord
    has_many :opportunities
    
    scope :c_owner, lambda { where("user_id = ?", current_user.id) }
end