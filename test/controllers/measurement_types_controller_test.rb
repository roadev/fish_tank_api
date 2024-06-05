require "test_helper"

class MeasurementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurement_type = measurement_types(:one)
  end

  test "should get index" do
    get measurement_types_url, as: :json
    assert_response :success
  end

  test "should create measurement_type" do
    assert_difference("MeasurementType.count") do
      post measurement_types_url, params: { measurement_type: { description: @measurement_type.description, name: @measurement_type.name, source_link: @measurement_type.source_link } }, as: :json
    end

    assert_response :created
  end

  test "should show measurement_type" do
    get measurement_type_url(@measurement_type), as: :json
    assert_response :success
  end

  test "should update measurement_type" do
    patch measurement_type_url(@measurement_type), params: { measurement_type: { description: @measurement_type.description, name: @measurement_type.name, source_link: @measurement_type.source_link } }, as: :json
    assert_response :success
  end

  test "should destroy measurement_type" do
    assert_difference("MeasurementType.count", -1) do
      delete measurement_type_url(@measurement_type), as: :json
    end

    assert_response :no_content
  end
end
