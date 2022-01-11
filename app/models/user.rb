class User < ApplicationRecord
  has_many :actions
  has_many :categories

  validates :name, presence: true
end
