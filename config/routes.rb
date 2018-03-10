Rails.application.routes.draw do
  resources :projecttypes
  resources :projectstatuses
  resources :projectnotes
  resources :projects
  resources :subcontractor_statuses
  resources :subcontractors
  resources :rentallists
  resources :rentalequipments
  resources :materiallists
  resources :materials
  resources :customer_statuses
  resources :customers
  resources :assignments
  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations"}

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
