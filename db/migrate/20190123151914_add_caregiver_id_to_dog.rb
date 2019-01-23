class AddCaregiverIdToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :caregiver_id, :integer
  end
end
