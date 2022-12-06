class RenameLocationToAddressInSubCategories < ActiveRecord::Migration[7.0]
  def up
    rename_column :sub_categories, :location, :address
  end

  def down
    rename_column :sub_categories, :address, :location
  end
end
