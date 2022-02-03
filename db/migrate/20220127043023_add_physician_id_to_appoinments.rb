class AddPhysicianIdToAppoinments < ActiveRecord::Migration[5.2]
  def change
    add_column :appoinments, :physician_id, :integer
    add_index :appoinments, :physician_id
  end
end
