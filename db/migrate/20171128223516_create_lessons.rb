class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :company_id
      t.boolean :active

      t.timestamps
    end
  end
end
