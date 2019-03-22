class OpportunitiesController < ApplicationController
  def index
    @opportunities = Opportunity.all
  end
  
  def create
    Opportunity.create contact_id: params[:id], status_id: params[:status_id], created_at: DateTime.now, entreprise: params[:entreprise], content: params[:content]
    redirect_to "/contacts/#{params[:id]}"
  end
  
  def update
    Opportunity.update entreprise: params[:entreprise], status_id: params[:status_id], content: params[:content]
    redirect_to "/opportunities/#{params[:id]}"
  end

  def show
    @opportunity = Opportunity.find(params[:id])
  end
  
  def destroy
    Opportunity.find(params[:id]).destroy
    redirect_to "/contacts/#{params[:id]}"
  end
end
