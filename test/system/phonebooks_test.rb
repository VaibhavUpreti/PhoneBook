require "application_system_test_case"

class PhonebooksTest < ApplicationSystemTestCase
  setup do
    @phonebook = phonebooks(:one)
  end

  test "visiting the index" do
    visit phonebooks_url
    assert_selector "h1", text: "Phonebooks"
  end

  test "should create phonebook" do
    visit phonebooks_url
    click_on "New phonebook"

    fill_in "Discord", with: @phonebook.discord
    fill_in "Email", with: @phonebook.email
    fill_in "First name", with: @phonebook.first_name
    fill_in "Instagram", with: @phonebook.instagram
    fill_in "Irc hangle", with: @phonebook.irc_hangle
    fill_in "Last name", with: @phonebook.last_name
    fill_in "Phone", with: @phonebook.phone
    fill_in "Twitter", with: @phonebook.twitter
    click_on "Create Phonebook"

    assert_text "Phonebook was successfully created"
    click_on "Back"
  end

  test "should update Phonebook" do
    visit phonebook_url(@phonebook)
    click_on "Edit this phonebook", match: :first

    fill_in "Discord", with: @phonebook.discord
    fill_in "Email", with: @phonebook.email
    fill_in "First name", with: @phonebook.first_name
    fill_in "Instagram", with: @phonebook.instagram
    fill_in "Irc hangle", with: @phonebook.irc_hangle
    fill_in "Last name", with: @phonebook.last_name
    fill_in "Phone", with: @phonebook.phone
    fill_in "Twitter", with: @phonebook.twitter
    click_on "Update Phonebook"

    assert_text "Phonebook was successfully updated"
    click_on "Back"
  end

  test "should destroy Phonebook" do
    visit phonebook_url(@phonebook)
    click_on "Destroy this phonebook", match: :first

    assert_text "Phonebook was successfully destroyed"
  end
end
