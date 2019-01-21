class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.integer :age
      t.string :size
      t.string :vet_name
      t.string :food_name
      t.string :img_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
