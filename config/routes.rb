Chukka::Application.routes.draw do
  resources :excursions

  get "tours/show"

  resources :posts

  root :to => 'posts#index'
  match "tours" => "tours#index"
end
