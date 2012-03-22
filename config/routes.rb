Chukka::Application.routes.draw do
  get "tours/show"

  resources :posts

  root :to => 'posts#index'
  match "tours" => "tours#index"
end
