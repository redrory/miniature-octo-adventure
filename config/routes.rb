Chukka::Application.routes.draw do
  get "customers/create"

  resources :excursions
  resources :posts
  resources :tours
  resources :customers

  get "tours/show"

  root :to => 'posts#index'
	
  match "tours" => "tours#show"
  match "jamaica" => "tours#jamaica"
  match "mobay_tours" => "excursions#mobay_tours"
  match "ochi_tours" => "excursions#ochi_tours"
  match "falmouth_tours" => "excursions#falmouth_tours"

end
