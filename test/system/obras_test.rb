require "application_system_test_case"

class ObrasTest < ApplicationSystemTestCase
  setup do
    @obra = obras(:one)
  end

  test "visiting the index" do
    visit obras_url
    assert_selector "h1", text: "Obras"
  end

  test "creating a Obra" do
    visit obras_url
    click_on "New Obra"

    fill_in "Descricao", with: @obra.descricao
    fill_in "Estilo obra", with: @obra.estilo_obra
    fill_in "Nome", with: @obra.nome
    fill_in "Preco", with: @obra.preco
    fill_in "Quantidade", with: @obra.quantidade
    click_on "Create Obra"

    assert_text "Obra was successfully created"
    click_on "Back"
  end

  test "updating a Obra" do
    visit obras_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @obra.descricao
    fill_in "Estilo obra", with: @obra.estilo_obra
    fill_in "Nome", with: @obra.nome
    fill_in "Preco", with: @obra.preco
    fill_in "Quantidade", with: @obra.quantidade
    click_on "Update Obra"

    assert_text "Obra was successfully updated"
    click_on "Back"
  end

  test "destroying a Obra" do
    visit obras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Obra was successfully destroyed"
  end
end
