class Post < ApplicationRecord
belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
has_many :editorships
has_many :editors, through: :editorships, source: :user

end
