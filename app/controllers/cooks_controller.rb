class CooksController < ApplicationController
  get '/login' do
    if !logged_in?
      erb :'cooks/login'
    else
      redirect("/recipes")
    end
  end

  post '/signup' do
   if !params[:username].empty? && !params[:email].empty? && !params[:password].empty?
     @user = Cook.create(username: params[:username], email: params[:email], password: params[:password])
     @user.save
     session[:user_id] = @user.id
     redirect("/recipes")
   else
     redirect("/signup")
   end
  end

   post '/login' do
    @user = Cook.find_by(username: params[:username])
    if @user != nil && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect("/recipes")
    else
      redirect("/signup")
    end
  end

  get '/logout' do
    if logged_in?
      session.clear
      redirect("/login")
    else
      redirect("/login")
    end
  end
end
