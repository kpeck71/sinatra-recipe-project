require 'rack-flash'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, "secret"
  set :views, Proc.new { File.join(root, "../views/") }

  use Rack::Flash

  get '/' do
    if !logged_in?
      erb :'/index'
    else
      redirect("/recipes")
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
