class PagesController < ApplicationController
  before_action :authenticate_user!
  
  def home
    @todopast = Todolist.where(user_id: current_user.id).past_todo.order(end_date: :asc)
    @tododay = Todolist.where(user_id: current_user.id).this_day_todo.order(end_date: :asc)
    @todoweek = Todolist.where(user_id: current_user.id).this_week_todo.order(end_date: :asc) - @tododay
    @todomonth = Todolist.where(user_id: current_user.id).this_month_todo.order(end_date: :asc) - @tododay - @todoweek
    @todoyear = Todolist.where(user_id: current_user.id).this_year_todo.order(end_date: :asc) - @todomonth - @todoweek - @tododay
  end
end