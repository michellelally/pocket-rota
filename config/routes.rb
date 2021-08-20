require 'sidekiq/web'

Rails.application.routes.draw do
  resources :events
  resources :employees
  resources :shifts
    authenticate :user, lambda { |u| u.admin? } do
      mount Sidekiq::Web => '/sidekiq'
    end
  
  get 'restrictions' => 'restrictions#index'

  get 'dashboard' => 'dashboard#index'

  post '/hours', :controller=>'shifts', :action=>'hours'
  
  post '/search', :controller=>'shifts', :action=>'search'
  get '/search', :controller=>'shifts', :action=>'search'

  devise_for :users
  root to: 'home#index'
end
