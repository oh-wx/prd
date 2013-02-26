module ApplicationHelper
	def full_title(page_title)
		title = "OH-WX"
		if page_title.empty?
			title
		else
			"#{title} | #{page_title}"
		end
	end
end
