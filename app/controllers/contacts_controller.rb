class ContactsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @contacts = Contact.where(user_id: current_user.id)
  end

  def create
    Contact.create last_name: params[:last_name], first_name: params[:first_name], email: params[:email], phone: params[:phone], adress: params[:adress], facebook_profil: params[:facebook_profil], twitter_profil: params[:twitter_profil], linkedin_profil: params[:linkedin_profil], instagram_profil: params[:instagram_profil], youtube_profil: params[:youtube_profil], user_id: current_user.id
    redirect_to '/contacts'
  end
  
  def add
  end
  
  def change
    @contact = Contact.find(params[:id])
  end
  
  def show
    @contact = Contact.find(params[:id])
    @opportunities = Opportunity.where(contact_id: params[:id])
  end
  
  def update
    Contact.update(params[:id], last_name: params[:last_name], first_name: params[:first_name], email: params[:email], phone: params[:phone], adress: params[:adress], facebook_profil: params[:facebook_profil], twitter_profil: params[:twitter_profil], linkedin_profil: params[:linkedin_profil], instagram_profil: params[:instagram_profil], youtube_profil: params[:youtube_profil], user_id: current_user.id)
    redirect_to "/contacts/#{params[:id]}"
  end

  def destroy
    Opportunity.where(contact_id: params[:id]).destroy_all
    Contact.find(params[:id]).destroy
    redirect_to '/contacts'
  end
end
