class Blog < ApplicationRecord

  validates :title, :content, presence: :true
  validates :title, length: { maximum: 30 }
  validates :content, length: { maximum: 2000 }
end
