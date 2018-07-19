Rails.application.routes.draw do
  # root 'welcome#index'

  root 'welcome#participant'
  get '/host' => 'welcome#host', as: :host_root


  devise_for :owners, path: 'host', controllers:{
    sessions: 'host/sessions',
    registrations: 'host/registrations',
    passwords: 'host/passwords'
  }

  namespace :participant do
    resources :events
  end

  devise_for :owners, path: 'host', controllers:{
    sessions: 'host/sessions',
    registrations: 'host/registrations',
    passwords: 'host/passwords'
  }

  namespace :host do
    resources :events
  end
end
