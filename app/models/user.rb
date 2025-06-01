class User < ApplicationRecord
    has_many :created_posts, class_name: 'Post', foreign_key: 'creator_id'
    has_many :editorships
    has_many :edited_posts, through: :editorships, source: :post

end
