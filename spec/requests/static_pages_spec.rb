require 'rails_helper'

RSpec.describe "StaticPages", :type => :request do

  describe "Home page" do

    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	expect(page).to have_content('Sample App')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "Help page" do

  	it "should have the content 'Help'" do
  		visit '/static_pages/help'
  		expect(page).to have_content('Help')
  	end

  	it "should have the title 'help'" do
  		visit '/static_pages/help'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
  	end
  end

  describe "About page" do
  	it "should have the context 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_content('About')
  	end

  	it "shoubld have the title 'About Us'" do
  		visit '/static_pages/about'
  		expect(page).to have_title("Ruby on Rails Tutorial Sample App | About")
  	end
  end

end
