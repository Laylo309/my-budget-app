class Category < ApplicationRecord
  belongs_to :user
  has_many :activities_categories, dependent: :destroy
  has_many :activities, through: :activities_categories

  validates :name, presence: true
  validates :icon, presence: true
end
