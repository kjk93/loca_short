class Short < ActiveRecord::Base
	validates :original, presence: true
	validates :short, presence: true, length: {is: 8}
end
