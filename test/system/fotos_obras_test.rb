require "application_system_test_case"

class FotosObrasTest < ApplicationSystemTestCase
  setup do
    @fotos_obra = fotos_obras(:one)
  end

  test "visiting the index" do
    visit fotos_obras_url
    assert_selector "h1", text: "Fotos Obras"
  end

  test "creating a Fotos obra" do
    visit fotos_obras_url
    click_on "New Fotos Obra"

    fill_in "Foto", with: @fotos_obra.foto
    fill_in "Obra", with: @fotos_obra.obra_id
    click_on "Create Fotos obra"

    assert_text "Fotos obra was successfully created"
    click_on "Back"
  end

  test "updating a Fotos obra" do
    visit fotos_obras_url
    click_on "Edit", match: :first

    fill_in "Foto", with: @fotos_obra.foto
    fill_in "Obra", with: @fotos_obra.obra_id
    click_on "Update Fotos obra"

    assert_text "Fotos obra was successfully updated"
    click_on "Back"
  end

  test "destroying a Fotos obra" do
    visit fotos_obras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fotos obra was successfully destroyed"
  end
end
