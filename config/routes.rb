StartupDiscovery::Application.routes.draw do
  devise_for :users

  root :to => "home#index"

  resources :categories do
    resources :tags
  end
  resources :startups
end