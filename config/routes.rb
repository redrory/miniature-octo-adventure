Chukka::Application.routes.draw do
  resources :excursions
  resources :posts
  resources :tours

  get "tours/show"

  root :to => 'posts#index'
	
  match "tours" => "tours#show"
  match "jamaica" => "tours#jamaica"
  match "mobay_tours" => "excursions#mobay_tours"

end
