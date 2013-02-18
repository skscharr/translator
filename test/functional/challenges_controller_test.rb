require 'test_helper'

class ChallengesControllerTest < ActionController::TestCase
  setup do
    @challenge = challenges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:challenges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create challenge" do
    assert_difference('Challenge.count') do
      post :create, challenge: { q10: @challenge.q10, q11: @challenge.q11, q12: @challenge.q12, q13: @challenge.q13, q14: @challenge.q14, q15: @challenge.q15, q16: @challenge.q16, q17: @challenge.q17, q18: @challenge.q18, q19: @challenge.q19, q1: @challenge.q1, q20: @challenge.q20, q2: @challenge.q2, q3: @challenge.q3, q4: @challenge.q4, q5: @challenge.q5, q6: @challenge.q6, q7: @challenge.q7, q8: @challenge.q8, q9: @challenge.q9 }
    end

    assert_redirected_to challenge_path(assigns(:challenge))
  end

  test "should show challenge" do
    get :show, id: @challenge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @challenge
    assert_response :success
  end

  test "should update challenge" do
    put :update, id: @challenge, challenge: { q10: @challenge.q10, q11: @challenge.q11, q12: @challenge.q12, q13: @challenge.q13, q14: @challenge.q14, q15: @challenge.q15, q16: @challenge.q16, q17: @challenge.q17, q18: @challenge.q18, q19: @challenge.q19, q1: @challenge.q1, q20: @challenge.q20, q2: @challenge.q2, q3: @challenge.q3, q4: @challenge.q4, q5: @challenge.q5, q6: @challenge.q6, q7: @challenge.q7, q8: @challenge.q8, q9: @challenge.q9 }
    assert_redirected_to challenge_path(assigns(:challenge))
  end

  test "should destroy challenge" do
    assert_difference('Challenge.count', -1) do
      delete :destroy, id: @challenge
    end

    assert_redirected_to challenges_path
  end
end