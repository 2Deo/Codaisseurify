Rails.application.routes.draw do
  root "artists#index"

    # resources :artists, only: [:show]
    # resources :songs

  get "artists" => "artists#index"
  get "songs/new" => "songs#new",as: :new_song
  get "artists/:id" => "artists#show", as: :artist

  get "songs" => "artists#index"

end
