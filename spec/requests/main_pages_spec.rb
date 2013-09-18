require 'spec_helper'

describe "MainPages" do
	subject {page}
	before{ visit root_path}

	describe "headerbar" do
	end

	describe " block one " do

	end

	describe "block two" do
		
	end

	it "should have the right link" do
		click_link "Home"
      	page.should have_link("About Me")
      	page.should have_link("Home")
      	click_link "Contact"
		page.should have_selector('h1', text: "Contact Me")
		click_link "Home"
		page.should have_link("About Me")
	end
end
