class CreateBookCategories < ActiveRecord::Migration
  def change
    create_table :book_categories do |t|
    	t.belongs_to :book
    	t.belongs_to :category
      t.timestamps
    end
  end
end
