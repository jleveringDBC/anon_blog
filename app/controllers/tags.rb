post '/tag_search' do
	erb :tag_search
end

post '/tags' do
	redirect ("/tags/#{params[:tag]}")
end

post '/tagsname/:name' do
	tag = Tag.find_by_name(params[:name])
	redirect("/tags/#{tag.id}")
end

get '/tags/:tag' do
	begin
		@tag = Tag.find(params[:tag])
	rescue
	ensure
		puts "loading tag page"
	end
	erb :tag
end