class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :details
      t.integer :parent_id
      t.timestamps
    end
  end
end
