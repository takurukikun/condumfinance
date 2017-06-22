class Invoice < ApplicationRecord
  belongs_to :category
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :name, presence: true
  validates :role, presence: true
  validates :due_date, presence: true
  enum role: { receipt: 1, expense: 2 }
end
