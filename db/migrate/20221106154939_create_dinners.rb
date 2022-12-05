class CreateDinners < ActiveRecord::Migration[5.1]
  def change
    create_table :dinners do |t|
      t.integer :seq
      t.string :name

    end
  end
end
