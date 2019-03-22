class OpportunityContent < ActiveRecord::Migration[5.0]
  def change
    create_table :opportunities
    add_column :opportunities, :content, :text
  end
end
