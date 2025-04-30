class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.string :kitty_name
      t.integer :age
      t.string :gender
      t.string :breed
      t.string :personality, array: true
      t.string :housing_type
      t.string :location
      t.text :description
      t.jsonb :preferences
      t.datetime :posted_at

      t.timestamps
    end
  end
end
