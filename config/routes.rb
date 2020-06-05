Rails.application.routes.draw do
  resources :projects
  get 'projects/:id/add_site', to: 'projects#add_site', as: 'add_site'
  
  resources :measurements
  resources :deployments
  resources :units
  resources :types
  resources :sites

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
