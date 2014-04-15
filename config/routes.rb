Twitter::Application.routes.draw do
  resources :users
  resources :tweets
  resources :sessions

end
