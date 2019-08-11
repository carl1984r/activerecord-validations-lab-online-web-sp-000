class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 150 }
  validates :summary, length: { maximum: 150 }
  validates :category, inclusion: { in: [Fiction, Non-Fiction] }
end
