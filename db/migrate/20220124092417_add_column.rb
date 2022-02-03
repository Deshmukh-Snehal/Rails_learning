class AddColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :dob, :date
  end
end
