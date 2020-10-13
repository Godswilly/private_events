Rails.application.routes.draw do
  get 'events/new'
  get 'events/index'
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :users
  resources :events
  resources :event_attendees

  resources :event_attendees do
    match '/join', to: 'event_attendees#join', via: :post, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "events#index"
end
