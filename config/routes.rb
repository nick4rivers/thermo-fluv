# frozen_string_literal: true

Rails.application.routes.draw do
  root to: 'pages#home'

  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  resources :projects
  get 'projects/:id/add_site', to: 'projects#add_site', as: 'add_site'

  resources :sites
  get 'sites/:id/add_deployment', to: 'sites#add_deployment', as: 'add_deployment'

  resources :deployments

  resources :measurements
  post 'deployments/:id/import_measurements', to: 'measurements#import', as: 'import_measurements'

  resources :types
  resources :units

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
