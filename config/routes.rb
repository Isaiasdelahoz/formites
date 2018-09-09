Rails.application.routes.draw do
  root 'games#index'
  resources :games
  get 'games/play'
  # get 'games/show'
  # get 'games/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
