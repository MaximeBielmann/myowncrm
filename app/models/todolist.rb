class Todolist < ApplicationRecord
    belongs_to :opportunity
    
    scope :past_todo, lambda { where("end_date < ?", Time.zone.now.to_date) }
    scope :this_day_todo, lambda { where("end_date = ?", Time.zone.now.to_date) }
    scope :this_week_todo, lambda { where("end_date >= ? AND end_date <= ?", Time.zone.now.to_date, Time.zone.now.end_of_week) }
    scope :this_month_todo, lambda { where("end_date >= ? AND end_date <= ?", Time.zone.now.to_date, Time.zone.now.end_of_month) }
    scope :this_year_todo, lambda { where("end_date >= ? AND end_date <= ?", Time.zone.now.to_date, Time.zone.now.end_of_year) }
end