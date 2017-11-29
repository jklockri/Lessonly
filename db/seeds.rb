p 'Seeds file Started'
plan_levels = ['legacy','custom','basic','plus','growth','enterprise']

100.times do
  Company.create(
    name: Faker::Company.name,
    trial_status: Faker::Date.between(3.years.ago,Date.today),
    plan_level: plan_levels.sample
  )
end

150.times do
  Lesson.create(
    name: Faker::Job.key_skill,
    company_id: rand(1...100),
    active: Faker::Boolean.boolean
  )
end

p 'Seeds file Finished'
