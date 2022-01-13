class Activity < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, :amount, :categories, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
