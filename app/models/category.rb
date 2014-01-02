class Category < ActiveRecord::Base
	has_many :subcategory, :class_name => "Category", :foreign_key => "parent_id"
  belongs_to :parentcategory, :class_name => "Category"
  has_many :books, through: :book_categories, dependent: :destroy
  has_many :book_categories
end
