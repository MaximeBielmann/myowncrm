class Opportunity < ApplicationRecord
    belongs_to :contact
    has_many :todolists
end