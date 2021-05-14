class CreateDepartments < ActiveRecord::Migration[5.0]
  def change
    create_table :departments do |t|
      t.string :store_id
      t.string :name
      t.string :description
      t.string :code
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
