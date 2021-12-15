require "test_helper"

class JibsasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jibsa = jibsas(:one)
  end

  test "should get index" do
    get jibsas_url
    assert_response :success
  end

  test "should get new" do
    get new_jibsa_url
    assert_response :success
  end

  test "should create jibsa" do
    assert_difference('Jibsa.count') do
      post jibsas_url, params: { jibsa: { body: @jibsa.body, title: @jibsa.title } }
    end

    assert_redirected_to jibsa_url(Jibsa.last)
  end

  test "should show jibsa" do
    get jibsa_url(@jibsa)
    assert_response :success
  end

  test "should get edit" do
    get edit_jibsa_url(@jibsa)
    assert_response :success
  end

  test "should update jibsa" do
    patch jibsa_url(@jibsa), params: { jibsa: { body: @jibsa.body, title: @jibsa.title } }
    assert_redirected_to jibsa_url(@jibsa)
  end

  test "should destroy jibsa" do
    assert_difference('Jibsa.count', -1) do
      delete jibsa_url(@jibsa)
    end

    assert_redirected_to jibsas_url
  end
end
