class Blogpost < ApplicationRecord
    belongs_to :user
    has_rich_text :blog_text
    
end
