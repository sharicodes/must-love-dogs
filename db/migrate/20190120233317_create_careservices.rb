class CreateCareservices < ActiveRecord::Migration[5.2]
  def change
    create_table :careservices do |t|
      t.references :caregiver, foreign_key: true
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
