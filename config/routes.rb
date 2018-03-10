Rails.application.routes.draw do
  resources :rental_lists
  resources :rental_equipments
  resources :project_types
  resources :project_statuses
  resources :project_notes
  resources :material_lists
  resources :projects
  resources :subcontractor_statuses
  resources :subcontractors
  resources :materials
  resources :customer_statuses
  resources :customers
  resources :assignments
  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations"}

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
