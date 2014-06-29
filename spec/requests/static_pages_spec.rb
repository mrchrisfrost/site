require 'spec_helper'

describe "Static pages" do 

	subject { page }

		shared_examples_for "all static pages" do 
			it { should have_selector('h1', text: heading) }
			it { should have_title(full_title(page_title )) }
		end 

	describe "Home page" do
		before { visit root_path }
		let(:heading) 	{ 'Gourmand Plate' }
		let(:page_title) { '' }

		it_should_behave_like "all static pages" 
		it { should have_title('| Home') }
	end  

	describe "Help page" do 
		before { visit help_path }

		let(:heading) 		{ 'Help' }
		let(:page_title)	{ 'Help' }

		it_should_behave_like "all static pages"
	end 

	describe "About page" do 
		before { visit about_path }

		let(:heading) 		{ '' }
		let(:page_title)	{ 'About' }
	end 

	describe "Contact page" do 
		before { visit contact_path }

		let(:heading)		{ 'Contact Us' }
		let(:page_title) 	{ 'Contact' }
	end  
end 