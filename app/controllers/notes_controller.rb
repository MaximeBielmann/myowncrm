class NotesController < ApplicationController
  def create
    Note.create note_date: DateTime.now, note_title: params[:note_title], note_content: params[:note_content], opportunity_id: params[:id], user_id: current_user.id
    redirect_to "/opportunities/#{params[:id]}"
  end
  
  def update
    Note.update note_date: params[:note_date], note_title: params[:note_title], note_content: params[:note_content], user_id: current_user.id
    redirect_to :back
  end
  
  def destroy
    Note.find(params[:id]).destroy
    redirect_to :back
  end
end
