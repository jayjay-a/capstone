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
  resources :employees do
    collection do
      match 'search' => 'employees#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :rental_lists do
    collection do
      match 'search' => 'rental_lists#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :rental_equipments do
    collection do
      match 'search' => 'rental_equipments#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :project_types
  resources :project_statuses
  resources :project_notes
  resources :material_lists do
    collection do
      match 'search' => 'material_lists#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :projects do
    collection do
      match 'search' => 'projects#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :subcontractor_statuses
  resources :subcontractors do
    collection do
      match 'search' => 'subcontractors#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :materials do
    collection do
      match 'search' => 'materials#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :customer_statuses
  resources :customers do
    collection do
      match 'search' => 'customers#search', via: [:get, :post], as: :search #for ransack
     end
  end
  resources :assignments do
    collection do
      match 'search' => 'assignments#search', via: [:get, :post], as: :search #for ransack
     end
  end
  get '/pages/admin_panel', :as => 'admin_panel'
  resources :pages

  root 'projects#index'

  devise_for :users, controllers: { registrations: "registrations"}
  resources :users

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
