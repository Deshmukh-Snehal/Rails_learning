class CreateCoachDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :coach_details do |t|
      t.string :name
      t.string :sport
      t.string :country
      t.string :email
      t.bigint :age
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
