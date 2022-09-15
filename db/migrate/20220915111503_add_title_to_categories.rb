class AddTitleToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :title, :string
  end
end
