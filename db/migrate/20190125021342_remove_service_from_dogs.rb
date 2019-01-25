class RemoveServiceFromDogs < ActiveRecord::Migration[5.2]
  def change
    remove_column :dogs, :service_id, :integer
  end
end
