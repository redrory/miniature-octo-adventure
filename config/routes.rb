Chukka::Application.routes.draw do
  resources :excursions
  resources :posts
  resources :tours

  root :to => 'posts#index'

  get "tours/show"
  get "tours/jamaica"
  match "tours" => "tours#show"
  match "jamaica" => "tours#jamaica"
end
