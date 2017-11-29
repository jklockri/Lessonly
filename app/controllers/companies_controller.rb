class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def alphabetically
    @companies = Company.all.order(:name)
  end

  def with_modern_plan
    @companies = Company.where.not('plan_level = ?', 'custom')
    .where.not('plan_level =?','legacy')
    .order(:plan_level)
  end

  def not_trialing
    @companies = Company.where('trial_status < ?', Date.today ).order(:trial_status)
  end

  def created_last_month
    current_year = Time.now.year
    last_month = Time.now.month - 1
    @companies = Company.where('extract(year from created_at) = ?', current_year)
    .where('extract(month from created_at) = ?', last_month)
    .order(:created_at)
  end
end
