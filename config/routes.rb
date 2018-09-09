Rails.application.routes.draw do
  root 'games#index'
  get 'games/index'
  get 'games/new'
  get 'games/play'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
