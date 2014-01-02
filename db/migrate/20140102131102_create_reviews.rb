class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :comment
      t.float :rating
      t.belongs_to :book
      t.timestamps
    end
  end
end
