class Campaign < ApplicationRecord
  validates :title, presence: true,
                    uniqueness: true,
                    length: { in: 3..30 },
                    format: { with: /\A[a-zA-Z0-9\s]+\z/ }
  validates :description, presence: true,
                          length: { maximum: 2000 }
  validates :current_amount, :needed_amount, presence: true,
                                             numericality: true
  validates :requisite, presence: true,
                        numericality: true,
                        length: { is: 16 }
end
