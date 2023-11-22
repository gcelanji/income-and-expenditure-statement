require "test_helper"

class IAndEStatementsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:one)
    @statement = i_and_e_statements(:one)
  end

  test "should get index" do
    get i_and_e_statements_url
    assert_response :success
  end

  test "should get new" do
    get new_i_and_e_statement_url
    assert_response :success
  end

  test "should create I&E statement" do
    assert_difference("IAndEStatement.count") do
      post i_and_e_statements_url, params: {i_and_e_statement: {
        description: "New I&E statement",
        income_attributes: {"0": {name: "Salary", amount: "3000"}, "1": {name: "Other", amount: "200"}},
        expenditure_attributes: {"0": {name: "Rent", amount: "500"}, "1": {name: "Utilities", amount: "100"}}
      }}
    end

    assert_redirected_to i_and_e_statements_url
  end

  test "should show I&E statement" do
    get i_and_e_statement_path(@statement)
    assert_response :success
  end

  test "should get edit" do
    get edit_i_and_e_statement_path(@statement)
    assert_response :success
  end

  test "should update I&E statement" do
    patch i_and_e_statement_url(@statement), params: {i_and_e_statement: {
      description: "New I&E statement description",
      income_attributes: {"0": {name: "Salary", amount: "3000"}, "1": {name: "Other", amount: "200"}},
      expenditure_attributes: {"0": {name: "Rent", amount: "500"}, "1": {name: "Utilities", amount: "100"}}
    }}

    assert_redirected_to i_and_e_statements_url
  end
end
