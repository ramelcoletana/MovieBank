require 'test_helper'

class MovieFilesControllerTest < ActionController::TestCase
  setup do
    @movie_file = movie_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_file" do
    assert_difference('MovieFile.count') do
      post :create, movie_file: {  }
    end

    assert_redirected_to movie_file_path(assigns(:movie_file))
  end

  test "should show movie_file" do
    get :show, id: @movie_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movie_file
    assert_response :success
  end

  test "should update movie_file" do
    patch :update, id: @movie_file, movie_file: {  }
    assert_redirected_to movie_file_path(assigns(:movie_file))
  end

  test "should destroy movie_file" do
    assert_difference('MovieFile.count', -1) do
      delete :destroy, id: @movie_file
    end

    assert_redirected_to movie_files_path
  end
end
