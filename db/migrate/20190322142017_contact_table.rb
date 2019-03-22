class ContactTable < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts
    add_column :contacts, :last_name, :string
    add_column :contacts, :first_name, :string
    add_column :contacts, :email, :string
    add_column :contacts, :phone, :string
    add_column :contacts, :adress, :string
  end
end