class AddPlayerIdToAppoinmentinfo < ActiveRecord::Migration[5.2]
  def change
    add_column :appoinmentinfos, :player_id, :integer
    add_index :appoinmentinfos, :player_id
  end
end
