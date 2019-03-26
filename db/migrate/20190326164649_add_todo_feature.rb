class AddTodoFeature < ActiveRecord::Migration[5.0]
  def change
    create_table :todolists
    add_column :todolists, :opportunity_id, :integer
    add_column :todolists, :end_date, :date
    add_column :todolists, :content, :text
    add_column :todolists, :status, :string
  end
end
