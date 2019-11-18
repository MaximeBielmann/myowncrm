class AddFkNotes < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :opportunity_id, :integer
  end
end
