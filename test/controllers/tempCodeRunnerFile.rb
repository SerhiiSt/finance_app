test "should get edit" do
    get edit_operation_url(@operation)
    assert_response :success
  end