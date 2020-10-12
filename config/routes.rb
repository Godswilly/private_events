Rails.application.routes.draw do
  get 'events/new'
  get 'events/index'
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :users
  resources :events
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "users#index"
end
