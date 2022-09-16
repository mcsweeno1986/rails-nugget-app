class CreateSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categories do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.text :review
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
