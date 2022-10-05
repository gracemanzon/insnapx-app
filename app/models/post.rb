class Post < ApplicationRecord
  belongs_to :user

  validates :content, length: { maximum: 20 }
end
