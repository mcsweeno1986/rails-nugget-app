class AddCoordinatesToSubCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :sub_categories, :latitude, :float
    add_column :sub_categories, :longitude, :float
  end
end
