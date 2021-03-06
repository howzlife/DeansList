module CourseContentHelper

	def embed_doc(body)
		return "" if body.nil?
    	youtube_id = parse_for_url(body)
    	if youtube_id
			return	content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
		else

		end
	end

	def link_attachment(uploaded_file)
		return "" if uploaded_file.nil?
		content_tag(:p, link_to(cc.uploaded_file_file_name, cc.uploaded_file.url))
	end

    def parse_for_url(body)
		urls = URI.extract(body)
		if urls.length > 0 
			urls.each do |x|
				return x.split("v=").last if x.include? "youtube.com/watch"
			end
		end
	end
end
