class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.integer :phone_number
      t.string :neighborhood

      t.timestamps
    end
  end
end
