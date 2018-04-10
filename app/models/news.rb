class News < ApplicationRecord
  # validates :title, presence: true, length: { in: 10..50 }
  # validates :description, presence: true, length: { in: 20..1024 }
  paginates_per 2
end
