class CreateAppoinmentinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :appoinmentinfos do |t|
      t.date :appoinmentinfo
      t.string :doctor_name
      t.string :player_name

      t.timestamps
    end
  end
end
