require "application_system_test_case"

class ColleaguesTest < ApplicationSystemTestCase
  setup do
    @colleague = colleagues(:one)
  end

  test "visiting the index" do
    visit colleagues_url
    assert_selector "h1", text: "Colleagues"
  end

  test "creating a Colleague" do
    visit colleagues_url
    click_on "New Colleague"

    fill_in "Birthday", with: @colleague.birthday
    fill_in "Fname", with: @colleague.fname
    fill_in "Lname", with: @colleague.lname
    fill_in "Team", with: @colleague.team_id
    fill_in "Title", with: @colleague.title
    click_on "Create Colleague"

    assert_text "Colleague was successfully created"
    click_on "Back"
  end

  test "updating a Colleague" do
    visit colleagues_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @colleague.birthday
    fill_in "Fname", with: @colleague.fname
    fill_in "Lname", with: @colleague.lname
    fill_in "Team", with: @colleague.team_id
    fill_in "Title", with: @colleague.title
    click_on "Update Colleague"

    assert_text "Colleague was successfully updated"
    click_on "Back"
  end

  test "destroying a Colleague" do
    visit colleagues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colleague was successfully destroyed"
  end
end
