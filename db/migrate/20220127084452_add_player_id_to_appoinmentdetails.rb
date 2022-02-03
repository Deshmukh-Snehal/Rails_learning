class AddPlayerIdToAppoinmentdetails < ActiveRecord::Migration[5.2]
  def change
    add_column :appoinmentdetails, :player_id, :integer
    add_index :appoinmentdetails, :player_id
  end
end
