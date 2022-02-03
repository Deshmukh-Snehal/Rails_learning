class CreateCoachinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :coachinfos do |t|
      t.string :name
      t.string :sportname
      t.bigint :age
      t.string :country

      t.timestamps
    end
  end
end
