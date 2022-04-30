class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/events' do
    events = Event.all
    events.to_json(include: [:category])
  end

  get '/events/:id' do
    event = Event.find(params[:id])
    event.to_json(include: [:category])
  end

  post '/events/:id' do
    event = Event.create(
      event_name: params[:event_name],
      event_cost: params[:event_cost],
      event_id: params[:event_id]
    )
    event.to_json
  end

  patch '/events/:id' do
    event = Event.find(params[:id])
    event.update(
      event_name: params[:event_name],
      event_cost: params[:event_cost]
    )
    event.to_json
  end

  delete '/events/:id' do 
    event = Event.find(params[:id])
    event.destroy
  end

  get '/categories' do
    categories = Category.all 
    categories.to_json
  end

  get '/category/:id' do
    category = Category.find(params[:id])
    category.to_json(include: [:events])
  end
end
