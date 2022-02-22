Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :strikers, only: [:index, :show, :new, :create, :destroy] do
    resources :bookings, only: [:new, :create, :update]
  end
  get "/my-strikers", to: "strikers#my_strikers"
  # get '/my-bookings', to: 'bookings#my_bookings'
end
