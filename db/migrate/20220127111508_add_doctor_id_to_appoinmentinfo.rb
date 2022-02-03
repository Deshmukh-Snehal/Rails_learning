class AddDoctorIdToAppoinmentinfo < ActiveRecord::Migration[5.2]
  def change
    add_column :appoinmentinfos, :doctor_id, :integer
    add_index :appoinmentinfos, :doctor_id
  end
end
