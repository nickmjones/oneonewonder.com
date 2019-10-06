require 'test_helper'

class ColleaguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colleague = colleagues(:one)
  end

  test "should get index" do
    get colleagues_url
    assert_response :success
  end

  test "should get new" do
    get new_colleague_url
    assert_response :success
  end

  test "should create colleague" do
    assert_difference('Colleague.count') do
      post colleagues_url, params: { colleague: { birthday: @colleague.birthday, fname: @colleague.fname, lname: @colleague.lname, team_id: @colleague.team_id, title: @colleague.title } }
    end

    assert_redirected_to colleague_url(Colleague.last)
  end

  test "should show colleague" do
    get colleague_url(@colleague)
    assert_response :success
  end

  test "should get edit" do
    get edit_colleague_url(@colleague)
    assert_response :success
  end

  test "should update colleague" do
    patch colleague_url(@colleague), params: { colleague: { birthday: @colleague.birthday, fname: @colleague.fname, lname: @colleague.lname, team_id: @colleague.team_id, title: @colleague.title } }
    assert_redirected_to colleague_url(@colleague)
  end

  test "should destroy colleague" do
    assert_difference('Colleague.count', -1) do
      delete colleague_url(@colleague)
    end

    assert_redirected_to colleagues_url
  end
end
