Rails.application.routes.draw do
  get 'user/new'
  devise_for :users
  resources :events
  root to: 'static_pages#index'

  get 'attended', to: "events#attended", as: "attended"
  post 'attended', to: "events#attendedto", as: "attendedto"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
