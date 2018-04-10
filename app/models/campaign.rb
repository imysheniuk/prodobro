class Campaign < ApplicationRecord
  validates :title, presence: true,
                    uniqueness: true,
                    length: { in: 10..30 },
                    format: { with: /\A[a-zA-Z0-9\s]+\z/ }
  validates :description, presence: true,
                          length: { in: 30..2000 }
  validates :current_amount, :needed_amount, presence: true,
                                             numericality: true,
                                             length: { maximum: 9 }
  validates :requisite, presence: true,
                        numericality: true,
                        length: { is: 16 }
end
