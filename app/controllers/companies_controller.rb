class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def alphabetically
    @companies = Company.all.order(:name)
  end
end
