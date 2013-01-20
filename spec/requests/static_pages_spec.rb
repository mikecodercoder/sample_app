require 'spec_helper'

describe "Static pages" do

  #render_views

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }

  describe "Home page" do
    before { visit root_path }
    subject { page }
    
    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: "| Home") }
  end

  describe "Help page" do
    before { visit help_path }
    subject { page }
    
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }
    subject { page }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

  describe "Contact Page" do
    before { visit contact_path }
    subject { page }
    
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_selector 'title', text: full_title('About Us')
    click_link "Help"
    page.should have_selector 'title', text: full_title('Help')
    click_link "Contact"
    page.should have_selector 'title', text: full_title('Contact')
    #click_link "Home"
    #click_link "Sign up now!"
    #page.should # fill in
    #click_link "sample app"
    #page.should # fill in
  end
  
end
