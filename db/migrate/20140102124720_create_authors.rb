class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.text :details
      t.text :email
      t.timestamps
    end
  end
end
