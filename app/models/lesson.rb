class Lesson < ApplicationRecord
  belongs_to :company

  validates :name, :active, :company_id, presence: true
end
