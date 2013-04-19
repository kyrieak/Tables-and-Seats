RemoteRetro::Application.routes.draw do
  devise_for :users
  root :to => "home#index"

  resources :retros do
    resources :remarks
  end

  match '/404', :to => "application#render_error"
  match '/500', :to => "application#render_error"

end
