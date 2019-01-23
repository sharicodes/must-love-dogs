class AddServiceIdToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :service_id, :integer
  end
end
