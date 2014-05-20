class ShortenController < ApplicationController
  def home
  end

  def create
  	@short = Short.new
  end

  def redirect
  end

  def error
  end
end
