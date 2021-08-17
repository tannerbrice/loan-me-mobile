class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :users, null: false, foreign_key: true
      t.references :convos, null: false, foreign_key: true

      t.timestamps
    end
  end
end
