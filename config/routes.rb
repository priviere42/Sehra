Rails.application.routes.draw do

  devise_for :users

  get 'events/index'
  get 'events/show'
  get 'cities/index'
  get 'cities/show'
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
