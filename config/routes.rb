Rails.application.routes.draw do
  resources :buildings
  resources :companies
  resources :employees
  get 'delete_form', to: 'employees#delete_form'
  post 'employee_delete', to: 'employees#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
