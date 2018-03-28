Rails.application.routes.draw do

  get 'aaron_reports/report1'

  get 'aaron_reports/report2'

  get 'aaron_reports/report3'

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
  resources :rental_lists
  resources :rental_equipments
  resources :project_types
  resources :project_statuses
  resources :project_notes
  resources :material_lists
  resources :projects do
    collection do
      match 'search' => 'projects#search', via: [:get, :post], as: :search #for ransack
     end
  end
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
