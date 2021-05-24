# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "visiting /ask renders the form" do
    visit ask_url
    assert_selector "p", text: "Ask your coach anything"
  end

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "user_ask", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "saying Hello yields the right response from the coach" do
    visit ask_url
    fill_in "user_ask", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
  
  test "saying Hello yields an angry response from the coach" do
    visit ask_url
    fill_in "user_ask", with: "Can I take a break?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!"
  end
end