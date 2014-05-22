class ShortenController < ApplicationController
  def home
  	@short = Short.new
  end

  def create
  	hash = hash()
  	@short = Short.new
  end

  def redirect
  end

  def error
  end

  private 
  	def hash()
  		@short = Short.last
  		return inc(@short.short)
  	end

  	def inc(hash) #increment hash value
  		lib = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"
  		alib = lib.each_char.to_a

		ahash = hash.each_char.to_a #string put into array

		len = ahash.length

		if ahash[len - 1] == "z"
			i = 1 #counter for end of string

			while ahash[len - i] == "z" do
				ahash[len - i] = "0"
				i = i + 1 # next character
			end

			return ahash.join
		else
			original = ahash[len - 1]

			inc = alib[lib.index(original) + 1] # incremented value characrter

			ahash[len - 1] = inc

			return ahash.join
		end
  	end
end
