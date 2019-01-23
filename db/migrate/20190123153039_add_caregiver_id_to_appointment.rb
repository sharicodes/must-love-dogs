class AddCaregiverIdToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :caregiver_id, :integer
  end
end
