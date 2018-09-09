Rails.application.routes.draw do
  root 'games#index'
  
  resources :games, only: [:index, :new, :create] do
    collection do
      get :play
      put :attack
    end

  end
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

