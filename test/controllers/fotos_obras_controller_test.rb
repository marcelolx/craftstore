require 'test_helper'

class FotosObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fotos_obra = fotos_obras(:one)
  end

  test "should get index" do
    get fotos_obras_url
    assert_response :success
  end

  test "should get new" do
    get new_fotos_obra_url
    assert_response :success
  end

  test "should create fotos_obra" do
    assert_difference('FotosObra.count') do
      post fotos_obras_url, params: { fotos_obra: { foto: @fotos_obra.foto, obra_id: @fotos_obra.obra_id } }
    end

    assert_redirected_to fotos_obra_url(FotosObra.last)
  end

  test "should show fotos_obra" do
    get fotos_obra_url(@fotos_obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_fotos_obra_url(@fotos_obra)
    assert_response :success
  end

  test "should update fotos_obra" do
    patch fotos_obra_url(@fotos_obra), params: { fotos_obra: { foto: @fotos_obra.foto, obra_id: @fotos_obra.obra_id } }
    assert_redirected_to fotos_obra_url(@fotos_obra)
  end

  test "should destroy fotos_obra" do
    assert_difference('FotosObra.count', -1) do
      delete fotos_obra_url(@fotos_obra)
    end

    assert_redirected_to fotos_obras_url
  end
end
