class TodolistsController < ApplicationController
  before_action :authenticate_user!

  def index
    @todolists = Todolist.all
  end
  
  def create
    Todolist.create opportunity_id: params[:id], end_date: params[:end_date], content: params[:content], status: params[:status], user_id: current_user.id
    redirect_to "/opportunities/#{params[:id]}"
  end

  def show
    @todolist = Todolist.find(params[:id])
  end
  
  def update
    Todolist.update(params[:id], status: "FINISH", user_id: current_user.id)
    redirect_to :back
  end
  
  def cancel
    Todolist.update(params[:id], status: "PENDING", user_id: current_user.id)
    redirect_to :back
  end
  
  def delete
    Todolist.find(params[:id]).destroy
    redirect_to :back
  end
end
