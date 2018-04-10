Rails.application.routes.draw do

  get 'reports/index' => 'reports#index'

  get 'reports/subcontractors_status'

  get 'reports/compare_projects'

  get 'reports/bid_info'

  get 'reports/project_duration'

  get 'reports/job_duration'

  get 'reports/task_duration'

  get 'reports/subcontractor_freq'

  get 'reports/tasks_status'

  get 'reports/rental_freq'

  get 'reports/project_notes'


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
