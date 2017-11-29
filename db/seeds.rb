p 'Seeds file Started'
plan_levels = ['legacy','custom','basic','plus','growth','enterprise']

100.times do
  Company.create(
    name: Faker::Company.name,
    trial_status: Faker::Date.between(3.years.ago, 1.year.from_now),
    plan_level: plan_levels.sample,
    created_at: Faker::Date.between(3.years.ago, 1.year.from_now)
  )
end

150.times do
  Lesson.create(
    name: Faker::Job.key_skill,
    company_id: rand(1...100),
    active: Faker::Boolean.boolean(0.5)
  )
end

p 'Seeds file Finished'
