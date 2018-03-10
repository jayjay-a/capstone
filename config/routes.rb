Rails.application.routes.draw do
  resources :task_statuses
  resources :task_notes
  resources :tasks
  resources :job_types
  resources :job_statuses
  resources :job_notes
  resources :jobs
  resources :employee_types
  resources :employee_statuses
  resources :states
  resources :employees
  root 'home#index'

  devise_for :users, controllers: { registrations: "registrations"}

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
