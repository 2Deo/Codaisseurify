Rails.application.routes.draw do
  root "artists#index"

  resources :artists do
  resources :songs

  end

  resources :songs, except: [:new, :create]


  # # get "artists" => "artists#index"
  # get "artist/:id/songs/new" => "songs#new",as: :new_song
  # # get "artists/:id" => "artists#show"
  # get "songs" => "artists#index"

end
