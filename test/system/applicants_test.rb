require "application_system_test_case"

class ApplicantsTest < ApplicationSystemTestCase
  setup do
    @applicant = applicants(:one)
  end

  test "visiting the index" do
    visit applicants_url
    assert_selector "h1", text: "Applicants"
  end

  test "creating a Applicant" do
    visit applicants_url
    click_on "New Applicant"

    fill_in "Degree", with: @applicant.degree
    fill_in "Email", with: @applicant.email
    fill_in "Graduation Time", with: @applicant.graduation_time
    fill_in "Major", with: @applicant.major
    fill_in "Name", with: @applicant.name
    fill_in "Phone", with: @applicant.phone
    fill_in "Sponsorship", with: @applicant.sponsorship
    fill_in "University", with: @applicant.university
    click_on "Create Applicant"

    assert_text "Applicant was successfully created"
    click_on "Back"
  end

  test "updating a Applicant" do
    visit applicants_url
    click_on "Edit", match: :first

    fill_in "Degree", with: @applicant.degree
    fill_in "Email", with: @applicant.email
    fill_in "Graduation Time", with: @applicant.graduation_time
    fill_in "Major", with: @applicant.major
    fill_in "Name", with: @applicant.name
    fill_in "Phone", with: @applicant.phone
    fill_in "Sponsorship", with: @applicant.sponsorship
    fill_in "University", with: @applicant.university
    click_on "Update Applicant"

    assert_text "Applicant was successfully updated"
    click_on "Back"
  end

  test "destroying a Applicant" do
    visit applicants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Applicant was successfully destroyed"
  end
end
