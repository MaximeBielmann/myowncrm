class AddOpportunity < ActiveRecord::Migration[5.0]
  def change
    create_table :opportunities
    add_column :opportunities, :contact_id, :integer
    add_column :opportunities, :status_id, :integer
    add_column :opportunities, :created_at, :datetime
    add_column :opportunities, :entreprise, :string
  end
end
