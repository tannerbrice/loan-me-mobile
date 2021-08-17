class AddBuyeridToConvos < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :convos, :users, column: :buyer_id
  end
end
