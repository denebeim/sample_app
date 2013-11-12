SampleApp::Application.routes.draw do
  root 'static_pages#home'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/signup',  to: 'users#new',            via: 'get'
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
end
