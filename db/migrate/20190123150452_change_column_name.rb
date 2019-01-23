class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :appointments, :careserves_id, :careservice_id
  end
end
