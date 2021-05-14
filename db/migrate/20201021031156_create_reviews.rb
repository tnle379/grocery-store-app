class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.text :note
      t.references :store, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
