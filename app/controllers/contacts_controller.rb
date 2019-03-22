class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def create
    Contact.create last_name: params[:last_name], first_name: params[:first_name], email: params[:email], phone: params[:phone], adress: params[:adress]
    redirect_to '/contacts'
  end
  
  def add
  end
  
  def show
    @contact = Contact.find(params[:id])
  end
  
  def update
    Contact.update(params[:id], last_name: params[:last_name], first_name: params[:first_name], email: params[:email], phone: params[:phone], adress: params[:adress])
    redirect_to '/contacts/#{params[:id]}'
  end

  def destroy
    Contact.find(params[:id]).destroy
    redirect_to '/contacts'
  end
end
