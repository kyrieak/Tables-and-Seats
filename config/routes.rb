RemoteRetro::Application.routes.draw do
  
  root :to => "home#index"

  resources :tables

  resources :seats

  get '/wireframes/seats', :to => "application#seats"

end
