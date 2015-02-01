require 'rails_helper'

describe "login process", :type => :feature do
  it "register user then login" do
    visit '/users/new'
    fill_in 'user_email', :with => 'guest00@guest.com'
    fill_in 'user_password', :with => 'guest000'
    fill_in 'user_password_confirmation', :with => 'guest000'
    click_button '登録する'
    expect(page).to have_content 'Please login first.'
  end
end
