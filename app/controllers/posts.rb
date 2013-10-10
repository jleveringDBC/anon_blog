get '/create' do
	erb :new_post
end

post '/create' do
	this_post = Post.create(params[:post])
	params[:tags].split(",").each do |tag|
		if the_tag = Tag.find_by_name(tag)
		else
			the_tag = Tag.create(name: tag)
		end
		this_post.tag_ids << the_tag.id
		this_post.save
	end
	redirect("/")
end