get '/' do
  @urls = Url.all.order(click_count: :desc)
  @urls.limit(10)
  erb :"static/index"
end

# get '/' do
#   puts "[LOG] Getting /"
#   puts "[LOG] Params: #{params.inspect}"
#   erb :index
#  end


post '/urls' do
	url = Url.create(long_url: params[:long_url])
	# url.update(short_url: url.shorten)
	# url.short_url = url.shorten
	# url.save
	"<tr><td>#{url.id}</td><td><a href='#{url.long_url}'>#{url.long_url}</a></td><td><a href='#{url.short_url}'>#{url.short_url}</a></td><td>#{url.click_count}</td></tr>"
end

# get '/about_me' do
# 	redirect "/"
# end

get '/:short_url' do
	url = Url.find_by(short_url: params[:short_url])
	
	unless url.nil?
		url.click_count += 1
		url.save
		redirect url.long_url
	else
		redirect "/"
	end
end


