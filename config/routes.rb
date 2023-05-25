require 'sidekiq/web'

Rails.application.routes.draw do
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :customers, path: '/admin/customers'
  resources :bookings, path: '/admin/bookings'
  resources :areas, path: '/admin/areas'
  resources :purposes, path: '/admin/purposes'
  resources :hotels, path: '/admin/hotels'
  resources :rooms, path: '/admin/rooms'
end
