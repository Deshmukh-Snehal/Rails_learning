class AddingColoumn < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :radiobutton, :string
  end
end
