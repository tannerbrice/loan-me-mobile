class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :gender
      t.integer :age
      t.integer :price
      t.string :location
      t.boolean :smoker
      t.boolean :drinker
      t.boolean :vaccinated

      t.timestamps
    end
  end
end
