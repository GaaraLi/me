require 'spec_helper'

describe "StaticPages" do
	subject {page}
  	describe "home page" do    
      	before {visit root_path}
      	it {should have_link("About Me")}
      	it {should have_link("Home")}
  	end

  	describe "contact page" do
  		before{ visit contact_path}
  		it { should have_selector("h1", text:"Contact Me")}
  	end

  	describe "about page" do
  		before{ visit about_path}
  		it { should have_selector("h1", text:"StaticPage#about")}
  	end
end
