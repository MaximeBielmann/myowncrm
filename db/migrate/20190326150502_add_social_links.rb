class AddSocialLinks < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :facebook_profil, :string
    add_column :contacts, :twitter_profil, :string
    add_column :contacts, :linkedin_profil, :string
    add_column :contacts, :instagram_profil, :string
    add_column :contacts, :youtube_profil, :string
  end
end
