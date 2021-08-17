class AddSelleridToConvos < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :convos, :users, column: :seller_id
  end
end
