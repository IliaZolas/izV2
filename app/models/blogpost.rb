class Blogpost < ApplicationRecord
    belongs_to :user
    has_rich_text :blog_text
    has_one_attached :photo
    
end
