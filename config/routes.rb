Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users

  match 'vote', to: 'votes#vote', via: :post
  match 'unvote', to: 'votes#unvote', via: :delete

  get 'events/index'
  get 'events/show'
  get 'cities/index'
  get 'cities/show'
  root 'home#index'
  get 'events/new', to: 'events#new'
  post 'events/new', to: 'events#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
