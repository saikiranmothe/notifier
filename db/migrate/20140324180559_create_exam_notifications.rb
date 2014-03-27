class CreateExamNotifications < ActiveRecord::Migration
  def change
    create_table :exam_notifications do |t|
      t.string :name
      t.date :last_date
      t.string :exam_date
      t.string :age_limit
      t.string :company_name
      t.text :edu_qualification
      t.integer :user_id

      t.timestamps
    end
  end
end
