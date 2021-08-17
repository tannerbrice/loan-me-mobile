class AddBioToSellers < ActiveRecord::Migration[6.0]
  def change
    add_column :sellers, :bio, :text
  end
end
