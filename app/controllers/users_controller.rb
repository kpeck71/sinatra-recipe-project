class UsersController < ApplicationController
  get '/login' do
    @error_message = params[:error]
    if !logged_in?
      erb :'/users/login'
    else
      redirect("/recipes")
    end
  end

  get '/signup' do
    if !logged_in?
      erb :'/users/create_user'
    else
      redirect("/recipes")
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

  get '/users' do
    @users = User.all
    erb :'/users/index'
  end

  get '/users/:slug' do
    @user = User.find_by_slug(params[:slug])
    binding.pry
    erb :'/users/show'
  end

  post '/signup' do
   if !params[:name].empty? && !params[:username].empty? && !params[:password].empty?
     @user = User.create(name: params[:name],username: params[:username], password: params[:password])
     @user.save
     session[:user_id] = @user.id
     redirect("/recipes")
   else
     redirect("/signup")
   end
  end

   post '/login' do
    @user = User.find_by(username: params[:username])
    if @user != nil && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect("/recipes")
    else
      redirect("/signup")
    end
  end

end
