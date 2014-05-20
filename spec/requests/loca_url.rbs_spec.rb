require 'spec_helper'

describe 'Home Page' do
	
	subject {page}

	describe 'layout' do
		before{visit root_path}

		it {should have_content('Loca URL Shortener')}
		it {should have_content('Enter any URL you want to shorten')}
	end

	describe 'URL create' do
		before do
			visit root_path

			fill_in "Original", with: "www.google.com"
		end

		it "should create a shortened URL" do
			expect {click_button submit}.to change(short, :count).by(1)
		end

		describe "URL created" do
			it {should have_content(short.short)}
		end
	end
end
