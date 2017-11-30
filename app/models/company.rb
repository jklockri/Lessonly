class Company < ApplicationRecord
  has_many :lessons

  validates :name, length: {minimum: 3, maximum: 254}, allow_blank: false
  validates :plan_level, :trial_status, presence: true

  scope :ordered_by_name, -> { reorder(name: :asc)}
  scope :modern, ->{where.not('plan_level = ?', 'custom').where.not('plan_level =?','legacy').order(:plan_level)}
  scope :not_trialing, -> {where('trial_status < ?', Date.today ).order(:trial_status)}

  scope :created_last_month, -> { where('created_at BETWEEN ? AND ?', DateTime.now.prev_month.beginning_of_month, DateTime.now.prev_month.end_of_month).order(:created_at) }

end
