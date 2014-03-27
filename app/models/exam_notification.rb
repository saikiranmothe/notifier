class ExamNotification < ActiveRecord::Base
  attr_accessible :age_limit, :company_name, :edu_qualification, :exam_date, :last_date, :name, :user_id
 
  #relations
  belongs_to :user

end
