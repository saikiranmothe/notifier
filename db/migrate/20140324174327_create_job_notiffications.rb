class CreateJobNotiffications < ActiveRecord::Migration
  def change
    create_table :job_notiffications do |t|
      t.string :company_name
      t.text :vacancies
      t.date :last_date
      t.date :exam_date
      t.string :age_limit
      t.text :edu_qualifications
      t.integer :user_id

      t.timestamps
    end
  end
end
