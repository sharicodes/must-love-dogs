class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :dog, foreign_key: true
      t.references :careserves, foreign_key: true

      t.timestamps
    end
  end
end
