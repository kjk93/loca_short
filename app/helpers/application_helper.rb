module ApplicationHelper

	#Places full title in header
	def full_title(page_title)
		base = "Loca: Shorten your URL"
		if page_title.empty?
			base
		else
			"#{base} | #{page_title}"
		end
	end
end
