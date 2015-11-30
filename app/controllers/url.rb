get '/' do
	@urls =Url.all.order(click_count: :desc)
  erb :"static/index"
end

post '/urls' do
	url=Url.create(long_url: params[:long_url])
	# url.shorten
	redirect "/"
end

# get '/urls' do
# 	@all_url=Url.all.order(click_count: :desc).limit(5)
# 	# @url=Url.find_by(id: params[:id])
# 	erb :'static/show'
# end

get  '/:short_url' do
	url = Url.find_by(short_url: params[:short_url])
	url.count

	redirect url.long_url
end