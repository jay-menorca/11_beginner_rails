class BlogArticle < ActiveRecord::Base

	validates :title, presence: true
end
