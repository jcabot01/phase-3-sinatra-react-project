class CategoriesController < ApplicationController
  set :default_content_type, 'application/json'

  get '/categories' do
    categories = Category.all 
    categories.to_json
  end

  get '/category/:id' do
    category = Category.find(params[:id])
    category.to_json(include: [:events])
  end
end