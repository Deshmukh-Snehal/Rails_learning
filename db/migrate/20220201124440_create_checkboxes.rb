class CreateCheckboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :checkboxes do |t|

      t.timestamps
    end
  end
end
