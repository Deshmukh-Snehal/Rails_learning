class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :states
      t.string :city
      t.string :email
      t.bigint :age

      t.timestamps
    end
  end
end
