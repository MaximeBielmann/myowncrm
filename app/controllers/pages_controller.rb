class PagesController < ApplicationController
  def home
    @todos = Todolist.where(end_date: DateTime.now.to_date, status: "PENDING")
  end
end
