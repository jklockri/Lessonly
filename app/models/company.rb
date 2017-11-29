class Company < ApplicationRecord
  has_many :lessons

  validates :name, length: {minimum: 3, maximum: 254}, allow_blank: false
  validates :plan_level, :trial_status, presence: true
end
