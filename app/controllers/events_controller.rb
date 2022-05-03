require 'pry'

class EventsController < ApplicationController
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/events' do
    event = Event.all
    event.to_json include: :category
  end

  post '/events' do
    event = Event.create(
      event_name: params[:event_name],
      event_cost: params[:event_cost],
      category_id: params[:category_id]
    )
    event.to_json
  end

  patch '/events/:id' do
    event = Event.find(params[:id])
    event.update(
      event_name: params[:event_name],
      event_cost: params[:event_cost],
      category_id: params[:category_id]
    )
    event.to_json
  end

  delete '/events/:id' do 
    event = Event.find(params[:id])
    event.destroy
  end
end