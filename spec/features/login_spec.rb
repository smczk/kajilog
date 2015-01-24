require 'rails_helper'
require 'support/support_helper'

describe "login process", :type => :feature do
  let!(:user) {FactoryGirl.create(:truthy_user)}

  before do
    visit root_path
    login_user_post("truthy@email.com", "password")
  end

  it "login process" do
    expect(page).to have_content("You are being redirected.")
  end
end
