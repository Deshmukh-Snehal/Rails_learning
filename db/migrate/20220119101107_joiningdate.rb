class Joiningdate < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors,:joiningdate,:date
  end
end
