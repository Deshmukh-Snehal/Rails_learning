class AddPlayersIdToAppoinments < ActiveRecord::Migration[5.2]
  def change
    add_column :appoinments, :players_id, :integer
    add_index :appoinments, :players_id
  end
end
