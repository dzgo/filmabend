require 'test_helper'

class Admin::MoviesControllerTest < ActionController::TestCase
  setup do
    @admin_movie = admin_movies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_movies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_movie" do
    assert_difference('Admin::Movie.count') do
      post :create, :admin_movie => @admin_movie.attributes
    end

    assert_redirected_to admin_movie_path(assigns(:admin_movie))
  end

  test "should show admin_movie" do
    get :show, :id => @admin_movie.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @admin_movie.to_param
    assert_response :success
  end

  test "should update admin_movie" do
    put :update, :id => @admin_movie.to_param, :admin_movie => @admin_movie.attributes
    assert_redirected_to admin_movie_path(assigns(:admin_movie))
  end

  test "should destroy admin_movie" do
    assert_difference('Admin::Movie.count', -1) do
      delete :destroy, :id => @admin_movie.to_param
    end

    assert_redirected_to admin_movies_path
  end
end
