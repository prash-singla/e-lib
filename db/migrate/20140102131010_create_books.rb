class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.text :isbn
      t.float :edition
      t.binary :is_verified
      t.belongs_to :publication
      t.timestamps
    end
  end
end
