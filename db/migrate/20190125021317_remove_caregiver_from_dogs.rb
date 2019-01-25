class RemoveCaregiverFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :caregiver_id, :integer
  end
end
