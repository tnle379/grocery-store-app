class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.text :description
      t.string :role
      t.string :status
      t.references :department, foreign_key: true

      t.timestamps
    end
  end
end
