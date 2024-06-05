require "test_helper"

class MeasurementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurement = measurements(:one)
  end

  test "should get index" do
    get measurements_url, as: :json
    assert_response :success
  end

  test "should create measurement" do
    assert_difference("Measurement.count") do
      post measurements_url, params: { measurement: { measurement_type_id: @measurement.measurement_type_id, unit: @measurement.unit, value: @measurement.value } }, as: :json
    end

    assert_response :created
  end

  test "should show measurement" do
    get measurement_url(@measurement), as: :json
    assert_response :success
  end

  test "should update measurement" do
    patch measurement_url(@measurement), params: { measurement: { measurement_type_id: @measurement.measurement_type_id, unit: @measurement.unit, value: @measurement.value } }, as: :json
    assert_response :success
  end

  test "should destroy measurement" do
    assert_difference("Measurement.count", -1) do
      delete measurement_url(@measurement), as: :json
    end

    assert_response :no_content
  end
end
