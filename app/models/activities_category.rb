class ActivitiesCategory < ApplicationRecord
  belongs_to :activity, dependent: :destroy
  belongs_to :category, dependent: :destroy
end
