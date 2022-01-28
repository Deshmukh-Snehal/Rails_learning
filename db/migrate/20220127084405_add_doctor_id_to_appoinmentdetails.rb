class AddDoctorIdToAppoinmentdetails < ActiveRecord::Migration[5.2]
  def change
    add_column :appoinmentdetails, :doctor_id, :integer
    add_index :appoinmentdetails, :doctor_id
  end
end
