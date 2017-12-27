class RecipesController < ApplicationController

  get '/recipes' do
    @recipes = Recipe.all
    erb :'/recipes/index'
  end

  get '/recipes/new' do
    erb :'/recipes/new'
  end

  get '/recipes/:slug' do
    @recipe = Recipe.find_by_slug(params[:slug])
    binding.pry
    erb :'/recipes/show'
  end

  post '/recipes' do
    if logged_in?
      if params[:name] != "" && params[:ingredients] != ""
        @recipe = current_user.recipe.create(name: params[:name], ingredients: params[:ingredients], cook_id: current_user.id)
        @recipe.save
        redirect("/recipes/#{@recipe.id}")
      else
        redirect("/recipes/new")
      end
    else
      redirect("/login")
    end
  end

  post '/recipes/:slug' do
    @recipe = Recipe.find_by_slug(params[:slug])
    @recipe.update(params[:recipe])

    if !params[:recipe][:name].empty?
      @recipe.name = params[:recipe][:name]
    end

    if !params[:recipe][:ingredients].empty?
      @recipe.ingredients = params[:recipe][:ingredients]
    end

    if !params[:category][:name].empty?
      @recipe.categories << Category.create(name: params[:category][:name])
    end

    @recipe.save

    redirect("/recipes/#{@recipe.slug}")
  end
end
