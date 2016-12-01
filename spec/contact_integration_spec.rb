require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_execptions, false)

describe("the add contact route", {:type => :feature}) do
  it ('add new contact information and display a succces page') do
    visit('/')
    click_link("Click here to add contact")
    fill_in('first_name', :with => 'Jim')
    fill_in('last_name', :with => 'Joe')
    fill_in('job_title', :with => 'Average joe')
    fill_in('company', :with => 'Gym')
    click_button('Add contact')
    expect(page).to have_content('You have updated the information successfully')
  end
end
