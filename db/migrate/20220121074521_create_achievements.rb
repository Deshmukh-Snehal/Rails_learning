class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.string :medal_name
      t.bigint :total_medals
      t.string :country

      t.timestamps
    end
  end
end
