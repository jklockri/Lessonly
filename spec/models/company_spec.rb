require 'rails_helper'

RSpec.describe Company, type: :model do
  context 'validation tests' do
    it 'ensures name pressence' do
      company = Company.new(plan_level:'plus', trial_status:Date.parse('2017-10-10')).save
      expect(company).to eq(false)
    end

    it 'ensures plan_level pressence' do
      company = Company.new(name:'plus', trial_status:Date.parse('2017-10-10')).save
      expect(company).to eq(false)
    end

    it 'ensures trial_status pressence' do
      company = Company.new(name:'something',plan_level:'plus').save
      expect(company).to eq(false)
    end

    it 'should save successfully' do
      company = Company.new(name:'plus', trial_status:Date.parse('2017-10-10'), plan_level:'plus').save
      expect(company).to eq(true)
    end
  end
end
