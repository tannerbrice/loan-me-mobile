class AddBuyeridToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :buyer_id, :bigint
  end
end
