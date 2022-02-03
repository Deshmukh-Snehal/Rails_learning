class AddGendersIdToPlayer < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :genders_id, :integer
    add_index :players, :genders_id
  end
end
