Rails.application.routes.draw do

  get 'reports/index' => 'reports#index'

  get 'reports/report30'

  get 'reports/report29'

  get 'reports/report28'

  get 'reports/report27'

  get 'reports/report23'

  get 'reports/report24'

  get 'reports/report25'

  get 'reports/report26'

  get 'reports/report18'

  get 'reports/report19'

  get 'reports/report20'

  get 'reports/report21'

  get 'reports/report22'

  get 'reports/report15'

  get 'reports/report16'

  get 'reports/report17'

  get 'reports/report12'

  get 'reports/report13'

  get 'reports/report14'

  get 'reports/report9'

  get 'reports/report10'

  get 'reports/report11'

  get 'reports/report7'

  get 'reports/report8'

  get 'reports/report5'

  get 'reports/report6'

  get 'reports/report1'

  get 'reports/report2'

  get 'reports/report3'

  get 'reports/report4'

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
