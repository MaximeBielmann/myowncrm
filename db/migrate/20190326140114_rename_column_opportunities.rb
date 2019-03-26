class RenameColumnOpportunities < ActiveRecord::Migration[5.0]
  def change
    rename_column :opportunities, :entreprise, :project
  end
end
