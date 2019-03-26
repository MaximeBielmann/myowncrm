class TodolistsController < ApplicationController
  def add
    @project = Opportunity.find(params[:id])
  end

  def index
    @todolists = Todolist.all
  end
  
  def create
    Todolist.create opportunity_id: params[:id], end_date: params[:end_date], content: params[:content], status: params[:status]
    redirect_to "/opportunities/#{params[:id]}"
  end

  def show
    @todolist = Todolist.find(params[:id])
  end
  
  def update
    @todo = Todolist.where(opportunity_id: params[:id])
  end
  
  def delete
    Todolist.find(params[:id]).destroy
  end
end
