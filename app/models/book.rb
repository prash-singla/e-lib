class Book < ActiveRecord::Base
	has_many :authors, through: :book_authors, dependent: :destroy
  has_many :book_authors
  has_many :categories, through: :book_categories, dependent: :destroy
  has_many :book_categories
  belongs_to :publications
  has_many :reviews
end
