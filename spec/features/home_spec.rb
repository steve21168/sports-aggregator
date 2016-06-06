require 'spec_helper'


describe "the signin process", :type => :feature do
  before :each do
    User.create(email:"a@b.com", password: 'password', password_confirmation: 'password')
  end

  it "signs me in" do
    visit '/users/sign_in'
    within(".container") do
      fill_in 'user_email', :with => 'a@b.com'
      fill_in 'user_password', :with => 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'MLB'
  end
end
