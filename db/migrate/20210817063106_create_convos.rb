class CreateConvos < ActiveRecord::Migration[6.0]
  def change
    create_table :convos do |t|
      t.references :seller, null: false
      t.references :buyer, null: false
      t.timestamps
    end
  end
end
