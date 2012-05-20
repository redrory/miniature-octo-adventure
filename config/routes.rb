Chukka::Application.routes.draw do
  resources :excursions
  resources :posts
  resources :tours

  root :to => 'posts#index'



  match "tours" => "tours#show"
  match "jamaica" => "tours#jamaica"
  match "show_tours" => "excursions#show_tours"

end
