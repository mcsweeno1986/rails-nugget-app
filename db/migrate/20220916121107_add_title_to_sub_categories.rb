class AddTitleToSubCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :sub_categories, :title, :string
  end
end
