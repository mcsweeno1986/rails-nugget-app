class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
