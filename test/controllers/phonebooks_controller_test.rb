require "test_helper"

class PhonebooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @phonebook = phonebooks(:one)
  end

  test "should get index" do
    get phonebooks_url
    assert_response :success
  end

  test "should get new" do
    get new_phonebook_url
    assert_response :success
  end

  test "should create phonebook" do
    assert_difference("Phonebook.count") do
      post phonebooks_url, params: { phonebook: { discord: @phonebook.discord, email: @phonebook.email, first_name: @phonebook.first_name, instagram: @phonebook.instagram, irc_hangle: @phonebook.irc_hangle, last_name: @phonebook.last_name, phone: @phonebook.phone, twitter: @phonebook.twitter } }
    end

    assert_redirected_to phonebook_url(Phonebook.last)
  end

  test "should show phonebook" do
    get phonebook_url(@phonebook)
    assert_response :success
  end

  test "should get edit" do
    get edit_phonebook_url(@phonebook)
    assert_response :success
  end

  test "should update phonebook" do
    patch phonebook_url(@phonebook), params: { phonebook: { discord: @phonebook.discord, email: @phonebook.email, first_name: @phonebook.first_name, instagram: @phonebook.instagram, irc_hangle: @phonebook.irc_hangle, last_name: @phonebook.last_name, phone: @phonebook.phone, twitter: @phonebook.twitter } }
    assert_redirected_to phonebook_url(@phonebook)
  end

  test "should destroy phonebook" do
    assert_difference("Phonebook.count", -1) do
      delete phonebook_url(@phonebook)
    end

    assert_redirected_to phonebooks_url
  end
end
