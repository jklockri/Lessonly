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

  context 'check functionality' do
    before do
      @company1 = Company.create(name:'Something',plan_level:'plus', trial_status:Date.tomorrow, created_at: DateTime.now.tomorrow)
      @company2 = Company.create(name:'Awesome',plan_level:'custom', trial_status:Date.parse('2017-11-10'),
    created_at: DateTime.now.prev_month.beginning_of_month )
      @company3 = Company.create(name:'Books',plan_level:'legacy', trial_status:Date.parse('2017-3-4'),
    created_at: DateTime.now.prev_month )

    end

    it 'ensures ordered_by_name puts companies in A-Z order by name' do
      company = Company.ordered_by_name
      company.should == [@company2, @company3, @company1]
    end

    it 'ensures modern filters right companies' do
      company = Company.modern
      expect(company).to eq([@company1])
    end

    it 'ensures not_trialing filters right companies' do
      company = Company.not_trialing
      company.should =~ [@company2, @company3]
    end

    it 'ensures created_last_month filters right companies' do
      company = Company.created_last_month
      company.should =~ [@company2, @company3]
    end

  end
end
