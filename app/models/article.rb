class Article < ActiveRecord::Base
	validates :title, presence: true, length: {maximum: 20 , minimum: 4}
	validates :description, presence: true, length: {minimum: 4}
end