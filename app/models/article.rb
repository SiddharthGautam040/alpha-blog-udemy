class Article < ActiveRecord::Base
	validates :title, presence: true, length: {maximum: 20 , minimum: 4}
	validates :description, presence: true, length: {minimum: 4}
	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories
end