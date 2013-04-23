RemoteRetro::Application.routes.draw do
  devise_for :users
  root :to => "home#index"

  resources :retros

  resources :remarks

  get '/wireframes/remarks', :to => "application#remarks"

end
