class CreateAppoinmentdetails < ActiveRecord::Migration[5.2]
  def change
    create_table :appoinmentdetails do |t|
      t.date :appoinment_details

      t.timestamps
    end
  end
end
