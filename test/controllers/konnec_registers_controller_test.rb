require 'test_helper'

class KonnecRegistersControllerTest < ActionController::TestCase
  setup do
    @konnec_register = konnec_registers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:konnec_registers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create konnec_register" do
    assert_difference('KonnecRegister.count') do
      post :create, konnec_register: { allergy: @konnec_register.allergy, first_name: @konnec_register.first_name, last_name: @konnec_register.last_name, nickname: @konnec_register.nickname, size: @konnec_register.size, university: @konnec_register.university, year: @konnec_register.year }
    end

    assert_redirected_to konnec_register_path(assigns(:konnec_register))
  end

  test "should show konnec_register" do
    get :show, id: @konnec_register
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @konnec_register
    assert_response :success
  end

  test "should update konnec_register" do
    patch :update, id: @konnec_register, konnec_register: { allergy: @konnec_register.allergy, first_name: @konnec_register.first_name, last_name: @konnec_register.last_name, nickname: @konnec_register.nickname, size: @konnec_register.size, university: @konnec_register.university, year: @konnec_register.year }
    assert_redirected_to konnec_register_path(assigns(:konnec_register))
  end

  test "should destroy konnec_register" do
    assert_difference('KonnecRegister.count', -1) do
      delete :destroy, id: @konnec_register
    end

    assert_redirected_to konnec_registers_path
  end
end
