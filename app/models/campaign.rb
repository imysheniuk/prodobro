class Campaign < ApplicationRecord
  validates :title, presence: true,
                    length: { in: 10..30 },
                    format: { with: /\A[a-zA-Z]+\z/ }
  validates :description, presence: true,
                          length: { in: 30..500 }
  validates :current_amount, :needed_amount, presence: true,
                                             numericality: true,
                                             length: { maximum: 7 }
  validates :requisite, presence: true,
                        numericality: true,
                        length: { is: 16 }
end
