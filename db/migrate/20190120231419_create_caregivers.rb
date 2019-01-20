class CreateCaregivers < ActiveRecord::Migration[5.2]
  def change
    create_table :caregivers do |t|
      t.string :name
      t.string :neighborhood
      t.string :bio
      t.string :picture_url

      t.timestamps
    end
  end
end
