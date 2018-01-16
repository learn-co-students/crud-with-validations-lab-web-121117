Rails.application.routes.draw do
  #index
  get '/songs', to: 'songs#index', as: :songs
  #new
  get '/songs/new', to: 'songs#new', as: :new_song
  #create
  post '/songs', to: 'songs#create'
  #show
  get '/songs/:id', to: 'songs#show', as: :song
  #edit
  get '/songs/:id/edit', to: 'songs#edit', as: :edit_song
  #update
  patch 'songs/:id', to: 'songs#update'
  #destroy
  delete 'songs/:id', to: 'songs#destroy'
end
