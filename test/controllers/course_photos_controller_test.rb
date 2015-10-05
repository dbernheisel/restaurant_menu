require 'test_helper'

class CoursePhotosControllerTest < ActionController::TestCase
  setup do
    @course_photo = course_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_photo" do
    assert_difference('CoursePhoto.count') do
      post :create, course_photo: { course_id: @course_photo.course_id, photo_id: @course_photo.photo_id }
    end

    assert_redirected_to course_photo_path(assigns(:course_photo))
  end

  test "should show course_photo" do
    get :show, id: @course_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_photo
    assert_response :success
  end

  test "should update course_photo" do
    patch :update, id: @course_photo, course_photo: { course_id: @course_photo.course_id, photo_id: @course_photo.photo_id }
    assert_redirected_to course_photo_path(assigns(:course_photo))
  end

  test "should destroy course_photo" do
    assert_difference('CoursePhoto.count', -1) do
      delete :destroy, id: @course_photo
    end

    assert_redirected_to course_photos_path
  end
end
