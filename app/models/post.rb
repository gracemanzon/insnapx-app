class Post < ApplicationRecord
  belongs_to :user

  validates :content, length: { maximum: 20 }

  default_scope { order(created_at: :desc) }
end
