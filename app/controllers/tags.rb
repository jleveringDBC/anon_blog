post '/tag_search' do
	erb :tag_search
end

post '/tags' do
	redirect ("/tags/#{params[:tag]}")
end

get '/tags' do
	begin
		@tag = Tag.find_by_name(params[:tag])
	rescue
	ensure
		puts "loading tag page"
	end
	erb :tag
end