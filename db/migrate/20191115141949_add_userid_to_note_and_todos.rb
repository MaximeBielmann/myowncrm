class AddUseridToNoteAndTodos < ActiveRecord::Migration[5.0]
  def change
    add_column :todolists, :user_id, :integer
    add_column :notes, :user_id, :integer
  end
end
