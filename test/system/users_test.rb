require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Cpf", with: @user.CPF
    fill_in "Data De Nascimento", with: @user.Data-de-Nascimento
    fill_in "Endereço", with: @user.Endereço
    fill_in "Nome", with: @user.Nome
    fill_in "Senha", with: @user.Senha
    fill_in "Sobrenome", with: @user.Sobrenome
    fill_in "Telefone", with: @user.Telefone
    fill_in "Telefone2", with: @user.Telefone2
    fill_in "E Mail", with: @user.e-mail
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @user.CPF
    fill_in "Data De Nascimento", with: @user.Data-de-Nascimento
    fill_in "Endereço", with: @user.Endereço
    fill_in "Nome", with: @user.Nome
    fill_in "Senha", with: @user.Senha
    fill_in "Sobrenome", with: @user.Sobrenome
    fill_in "Telefone", with: @user.Telefone
    fill_in "Telefone2", with: @user.Telefone2
    fill_in "E Mail", with: @user.e-mail
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
