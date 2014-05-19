require 'spec_helper'

describe 'Home Page' do
	
	subject {page}

	describe 'layout' do
		before{visit root_path}

		it {should have_content('Loca URL Shortener')}
		it {should have_content('Enter any URL you want to shorten')}
	end
end
