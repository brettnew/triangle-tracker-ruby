require "capybara/rspec"
require "./app"
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the what triangle do you have path', {:type => :feature}) do
  it('receives user input on Check button click') do
    visit('/')
    fill_in('SideA', :with => '3')
    fill_in('SideB', :with => '4')
    fill_in('SideC', :with => '5')
    click_button('Check')
    expect(page).to have_content('scalene')
  end
end
