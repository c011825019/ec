Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'
  }

  namespace :admins do
    resources :customers, only: [:index, :show, :edit, :update]
    resources :items, only: [:index, :show, :new, :create]
    resources :orders, only: [:index, :show, :update]
    resources :productions, only: [:update]
  end

  scope module: :customers do
    get 'customers/my_page' => 'customers#show', as: 'my_page'
    get 'customers/information/edit' => 'customers#edit'
    patch 'customers/information' => 'customers#update'
    get 'customers/unsubscribe' => 'customers#unsubscribe'
    patch 'customers/withdraw' => 'customers#withdraw'
  end

  root to: 'homes#top'
  get 'home/about' => 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end