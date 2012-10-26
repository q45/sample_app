require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the h1 'Sample app'"do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample app')
  end
  
  it "Should have the title 'Home'" do
    visit '/static_pages/home'
    page.should have_selector('title', :text=> "Ruby on Rails Tutorial Sample App")
  end

  it "Should have the title 'Home'" do
    visit '/static_pages/home'
    page.should have_selector('title', :text=> "| Home")
  end
end

describe "Help page" do
  it "Should have the h1 'Help'" do
    visit '/static_pages/help'
    page.should have_selector('h1', :text => 'Help')
  end
  
  it "should have the title 'Help" do
    visit '/static_pages/help'
    page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Help')
  end 
end

describe 'About Page' do
  it "should have the page 'About Us'" do
    visit '/static_pages/about'
    page.should have_selector('h1', :text=> 'About Us')
  end
  it "should have the title 'About Us'" do
    visit '/static_pages/about'
    page.should have_selector('title', :text => "Ruby on Rails Tutorial Sample App | About Us")
  end
end

describe 'Contact Page' do
  it "should have the page 'Contact Us'" do
  visit '/static_pages/contact'
  page.should have_selector('h1', :text => "Contact Us")
end
  it "should have the title 'Contact Us'" do
    visit "/static_pages/contact"
    page.should have_selector('title', :text => 'Ruby on Rails Tutorial Sample App | Contact Us')
  end
end
end
    