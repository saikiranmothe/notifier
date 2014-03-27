class JobNotiffication < ActiveRecord::Base
  attr_accessible :age_limit, :company_name, :edu_qualifications, :exam_date, :last_date, :user_id, :vacancies



#relations
 belongs_to :user
end
