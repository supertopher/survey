helpers do 

 def current_user  
  if session[:user]
    @current_user ||= User.find(session[:user])
    end
  end

end