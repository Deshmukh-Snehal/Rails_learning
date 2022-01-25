class AddAchievementIdToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :achievement_id, :integer
    add_index :players, :achievement_id
  end
end
