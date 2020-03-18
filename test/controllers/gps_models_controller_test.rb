require 'test_helper'

class GpsModelsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gps_models_create_url
    assert_response :success
  end

end
