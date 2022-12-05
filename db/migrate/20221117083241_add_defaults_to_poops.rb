class AddDefaultsToPoops < ActiveRecord::Migration[5.1]
  def change
        change_column_default :poops, :hour, 12
        change_column_default :poops, :grade, 1
  end
end
