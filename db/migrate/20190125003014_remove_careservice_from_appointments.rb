class RemoveCareserviceFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :careservice_id, :integer
  end
end
