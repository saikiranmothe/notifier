require 'test_helper'

class JobNotifficationsControllerTest < ActionController::TestCase
  setup do
    @job_notiffication = job_notiffications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:job_notiffications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job_notiffication" do
    assert_difference('JobNotiffication.count') do
      post :create, job_notiffication: { age_limit: @job_notiffication.age_limit, company_name: @job_notiffication.company_name, edu_qualifications: @job_notiffication.edu_qualifications, exam_date: @job_notiffication.exam_date, last_date: @job_notiffication.last_date, user_id: @job_notiffication.user_id, vacancies: @job_notiffication.vacancies }
    end

    assert_redirected_to job_notiffication_path(assigns(:job_notiffication))
  end

  test "should show job_notiffication" do
    get :show, id: @job_notiffication
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job_notiffication
    assert_response :success
  end

  test "should update job_notiffication" do
    put :update, id: @job_notiffication, job_notiffication: { age_limit: @job_notiffication.age_limit, company_name: @job_notiffication.company_name, edu_qualifications: @job_notiffication.edu_qualifications, exam_date: @job_notiffication.exam_date, last_date: @job_notiffication.last_date, user_id: @job_notiffication.user_id, vacancies: @job_notiffication.vacancies }
    assert_redirected_to job_notiffication_path(assigns(:job_notiffication))
  end

  test "should destroy job_notiffication" do
    assert_difference('JobNotiffication.count', -1) do
      delete :destroy, id: @job_notiffication
    end

    assert_redirected_to job_notiffications_path
  end
end
