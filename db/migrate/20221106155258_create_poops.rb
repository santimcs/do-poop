class CreatePoops < ActiveRecord::Migration[5.1]
  def change
    create_table :poops do |t|
      t.date :date
      t.boolean :pooped
      t.integer :hour
      t.integer :grade
      t.references :lunch, foreign_key: true
      t.references :dinner, foreign_key: true
      t.references :snack, foreign_key: true

    end
  end
end
