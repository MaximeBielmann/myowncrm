class Notes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes
    add_column :notes, :note_date, :datetime
    add_column :notes, :note_title, :string
    add_column :notes, :note_content, :text
  end
end
