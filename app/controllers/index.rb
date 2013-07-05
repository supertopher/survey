get "/create" do
  erb :create_user
end


post '/create' do
  puts params
  user = User.create(params[:user])
  if user
    session[:user] = user.id
  end
  redirect "/"
end

get '/logout' do

  session.clear
  redirect '/'

end

get "/login" do
  erb :login_user
end

post "/login" do 
  user = User.find_by_user_name(params[:user][:user_name])
  authenticate = User.authenticate(params[:user])
  if authenticate
    session[:user] = user.id
  end
  redirect "/"
end
