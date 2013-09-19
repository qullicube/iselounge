module GooglefontsHelper
	def googlefont_link_tag(family)
  	stylesheet_link_tag "http://fonts.googleapis.com/css?family=#{family}", :media=>"all"
  	end
end