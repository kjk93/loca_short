class ShortenController < ApplicationController
  def home
  	@short = Short.new
  end
end
