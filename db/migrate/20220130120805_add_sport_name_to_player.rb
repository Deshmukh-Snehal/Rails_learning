class AddSportNameToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :sport_name, :string
    add_index :players, :sport_name
  end
end
