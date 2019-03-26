class OpportunitiesController < ApplicationController
  def index
    @opportunities = Opportunity.all
  end
  
  def add
    @contact = Contact.find(params[:id])
  end
  
  def change
    @opportunity = Opportunity.find(params[:id])
  end
  
  def create
    Opportunity.create contact_id: params[:id], status_id: params[:status_id], created_at: DateTime.now, project: params[:project], content: params[:content]
    redirect_to "/contacts/#{params[:id]}"
  end
  
  def update
    Opportunity.update project: params[:project], status_id: params[:status_id], content: params[:content]
    redirect_to "/opportunities/#{params[:id]}"
  end

  def show
    @opportunity = Opportunity.find(params[:id])
    @todos = Todolist.where(opportunity_id: params[:id])
  end
  
  def destroy
    @id = Opportunity.find(params[:id]).contact.id
    Todolist.where(opportunity_id: params[:id]).destroy_all
    Opportunity.find(params[:id]).destroy
    redirect_to "/contacts/#{@id}"
  end
end
