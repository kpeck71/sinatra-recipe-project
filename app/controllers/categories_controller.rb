class CategoriesController < ApplicationController

  get '/categories/:slug' do
    @category = Category.find_by_slug(params[:slug])
    erb :'/categories/show'
  end
end
