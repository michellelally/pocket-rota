require 'sidekiq/web'

Rails.application.routes.draw do
  resources :employees
  resources :shifts
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end

  get 'events' => 'events#index'

  devise_for :users
  root to: 'home#index'
end
