class CreateCalculatorrs < ActiveRecord::Migration[5.2]
  def change
    create_table :calculatorrs do |t|
      t.string :name

      t.timestamps
    end
  end
end
