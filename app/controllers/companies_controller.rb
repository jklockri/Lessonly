class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def alphabetically
    @companies = Company.all.order(:name)
  end

  def with_modern_plan
    @companies = Company.where.not('plan_level = ?', 'custom').where.not('plan_level =?','legacy')
  end
end
