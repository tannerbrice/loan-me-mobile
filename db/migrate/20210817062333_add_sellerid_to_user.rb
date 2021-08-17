class AddSelleridToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :seller_id, :bigint
  end
end
