class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def alphabetically
    @companies = Company.ordered_by_name
  end

  def with_modern_plan
    @companies = Company.modern
  end

  def not_trialing
    @companies = Company.not_trialing
  end

  def created_last_month
    @companies = Company.created_last_month
  end
end
