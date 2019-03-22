class OpportunityContent < ActiveRecord::Migration[5.0]
  def change
    add_column :opportunities, :content, :text
  end
end
