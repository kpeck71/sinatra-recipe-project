class CooksController < ApplicationController
  get '/login' do
    if !logged_in?
      erb :'cooks/login'
    else
      redirect("/recipes")
    end
  end

  get '/signup' do
    if !logged_in?
      erb :'/cooks/create_cook'
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

  get '/cooks' do
    @cooks = Cook.all
    erb :'/cooks/index'
  end

  get '/cooks/:slug' do
    @cook = Cook.find_by_slug(params[:slug])
    erb :'/cooks/show'
  end

  post '/signup' do
   if !params[:name].empty? && !params[:username].empty? && !params[:password].empty?
     @cook = Cook.create(name: params[:name],username: params[:username], password: params[:password])
     @cook.save
     session[:user_id] = @cook.id
     redirect("/recipes")
   else
     redirect("/signup")
   end
  end

   post '/login' do
    @cook = Cook.find_by(username: params[:username])
    if @cook != nil && @cook.authenticate(params[:password])
      session[:user_id] = @cook.id
      redirect("/recipes")
    else
      redirect("/signup")
    end
  end

end
