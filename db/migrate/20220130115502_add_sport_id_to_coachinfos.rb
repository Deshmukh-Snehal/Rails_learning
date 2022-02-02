class AddSportIdToCoachinfos < ActiveRecord::Migration[5.2]
  def change
    add_column :coachinfos, :sport_id, :integer
    add_index :coachinfos, :sport_id
  end
end
