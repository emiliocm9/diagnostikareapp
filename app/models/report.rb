class Report < ApplicationRecord
  validates :symptoms, presence: true
  belongs_to :user
end
