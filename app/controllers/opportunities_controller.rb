class OpportunitiesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @opportunities = Opportunity.where(user_id: current_user.id)
  end
  
  def add
    @contact = Contact.find(params[:id])
  end
  
  def change
    @opportunity = Opportunity.find(params[:id])
  end
  
  def create
    Opportunity.create contact_id: params[:id], user_id: current_user.id, status_id: params[:status_id], created_at: DateTime.now, project: params[:project], content: params[:content]
    redirect_to "/contacts/#{params[:id]}"
  end
  
  def update
    Opportunity.update project: params[:project], user_id: current_user.id, status_id: params[:status_id], content: params[:content]
    redirect_to "/opportunities/#{params[:id]}"
  end

  def show
    @opportunity = Opportunity.find(params[:id])
    @todos = Todolist.where(opportunity_id: params[:id]).order(end_date: :asc)
    @notes = Note.where(opportunity_id: params[:id]).order(note_date: :desc)
  end
  
  def destroy
    @id = Opportunity.find(params[:id]).contact.id
    Todolist.where(opportunity_id: params[:id]).destroy_all
    Opportunity.find(params[:id]).destroy
    redirect_to "/contacts/#{@id}"
  end
end
