Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ressources :strikers, only: [:index, :show, :new, :create, :destroy]
  get "/my-strikers", to: "strikers#my_strikers"
end
