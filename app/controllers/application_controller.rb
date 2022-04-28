class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get '/events' do
    events = Event.all
    events.to_json
  end

  post '/events/:id' do
    event = Event.create(
      event_name: params[:event_name],
      amount: params[:amount],
      event_id: params[:event_id]
    )
    event.to_json
  end

  patch '/events/:id' do
    event = Event.find(params[:id])
    event.update(
      event_name: params[:event_name],
      amount: params[:amount]
    )
    event.to_json
  end

  delete '/events/:id' do 
    event = Event.find(params[:id])
    event.destroy
  end
end
