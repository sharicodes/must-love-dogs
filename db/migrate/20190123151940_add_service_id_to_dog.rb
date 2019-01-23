class AddServiceIdToDog < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :service_id, :integer
  end
end
