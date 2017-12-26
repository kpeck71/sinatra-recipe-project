class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :session_secret, "my_application_secret"
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    @recipes = Recipe.all
    erb :'/recipes/index'
  end

  get '/login' do
    if !is_logged_in?
      erb :'cooks/login'
    else
      redirect("/recipes/index")
    end
  end

  get '/logout' do
    if is_logged_in?
      session.clear
      redirect("/login")
    else
      redirect("/login")
    end
  end

  helpers do
    def logged_in?
      !!current_user
    end
    def current_user
      @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    end


end
