class RecipesController < ApplicationController

  get '/recipes' do
    @error_message = params[:error]
    @recipes = Recipe.all
    erb :'/recipes/index'
  end

  get '/recipes/new' do
    if logged_in?
      @error_message = params[:error]
      erb :'/recipes/new'
    else
      redirect("/login")
    end
  end

  get '/recipes/:slug/edit' do
    if logged_in?
      @recipe = Recipe.find_by_slug(params[:slug])
      if @recipe.user_id == current_user.id
        erb :'/recipes/edit'
      else
        redirect("/recipes?error=You cannot edit a recipe that is not your own")
      end
    else
      redirect("/login?error=Not logged in")
    end
  end

  get '/recipes/:slug' do
    if logged_in?
      @recipe = Recipe.find_by_slug(params[:slug])
      erb :'/recipes/show'
    else
      redirect("/login?error=Please log in to see recipe details")
    end
  end

  post '/recipes' do
    if logged_in?
      if current_user.recipes.find_by(name: params[:recipe][:name])
        redirect("/recipes/new?error=This recipe exists already")
      end

      if params[:recipe][:name] != "" && params[:recipe][:ingredients] != ""
      @recipe = Recipe.create(params["recipe"])
      @recipe.user_id = current_user.id
      @recipe.categories << Category.create(params[:category]) if !params[:category][:name].empty?
      @recipe.save

      redirect("/recipes/#{@recipe.slug}")

      else
        redirect("/recipes/new?error=Both Name and Ingredients are required")
      end

    else
      redirect("/login")
    end
  end

  patch '/recipes/:slug' do
    @recipe = Recipe.find_by_slug(params[:slug])
    if current_user.id == @recipe.user_id
      params[:recipe][:category_ids] ||= false
      @recipe.update(params[:recipe])
      @recipe.categories << Category.create(params[:category]) if !params[:category][:name].empty?

      redirect("/recipes/#{@recipe.slug}")
    else
      redirect("/recipes")
    end
  end

  delete '/recipes/:slug/delete' do
    if logged_in?
    @recipe = Recipe.find_by_slug(params[:slug])
      if @recipe.user_id == current_user.id
        @recipe.delete
        redirect("/recipes")
      else
        redirect("/recipes?error=You cannot delete a recipe that is not your own")
      end
    else
      redirect("/login")
    end
  end
end
