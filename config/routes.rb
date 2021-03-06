Rails.application.routes.draw do
  root 'home#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  match 'vote', to: 'votes#vote', via: :post
  match 'unvote', to: 'votes#unvote', via: :delete

  resources :events
  resources :cities
  resources :charges

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
