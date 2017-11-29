class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.date :trial_status
      t.string :plan_level

      t.timestamps
    end
  end
end
