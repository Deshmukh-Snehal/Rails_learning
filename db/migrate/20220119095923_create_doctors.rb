class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.bigint :contact_no
      t.string :degree
      t.string :email

      t.timestamps
    end
  end
end
