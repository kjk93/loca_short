class ShortenController < ApplicationController
  def home
  	@short = Short.new
  end

  def create
  	hashvalue = urlhash
  	@short = Short.new(short: hashvalue)
  	if @short.save
  		render 'redirect'
  	else
  		render 'error'
  	end
  end

  def redirect
  end

  def error
  end

  private 
  	def urlhash
  		if Short.any?
  			lastShort = Short.last
  			return inc(lastShort.short)
  		else
  			return "00000000" #base number
  		end
  	end

  	def inc(hash) #increment hash value
  		lib = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz" # base 62 definition
  		alib = lib.each_char.to_a

		ahash = hash.each_char.to_a #string put into array

		len = ahash.length

		i = 1 #counter for end of string

		if ahash[len - i] == "z" #must inc previous digit
			while ahash[len - i] == "z" do #maxed digit
				ahash[len - i] = "0" #back to base number
				
				i = i + 1 # next character
			end
			temp = ahash[len - i] # digit before maxed digits
			ahash[len - i] = alib[lib.index(temp) + 1]
		else
			original = ahash[len - i]

			ahash[len - i] = alib[lib.index(original) + 1] # incremented value characrter
		end
		return ahash.join
  	end
end
