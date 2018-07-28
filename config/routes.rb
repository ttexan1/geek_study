Rails.application.routes.draw do

  root 'welcome#index'

  devise_for :users, path: 'participant', controllers:{
    sessions: 'participant/sessions',
    registrations: 'participant/registrations',
    passwords: 'participant/passwords'
  }

  namespace :participant do
    resources :events, only: [:index, :show] do
      resources :tickets, only: [:create, :destroy]
    end
    resources :owners, only: [:show]
  end

  devise_for :owners, path: 'host', controllers:{
    sessions: 'host/sessions',
    registrations: 'host/registrations',
    passwords: 'host/passwords'
  }

  namespace :host do
    resources :events
  end

  match '*path' => 'application#error404', via: :all
end
