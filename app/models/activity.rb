class Activity < ApplicationRecord
  belongs_to :user, foreign_key: :author_id
  has_many :activities_categories, dependent: :destroy
  has_many :categories, through: :activities_categories

  validates :name, :amount, presence: true
  validates :amount, numericality: { greater_than: 0 }
end
