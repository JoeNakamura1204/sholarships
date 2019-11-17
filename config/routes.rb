Rails.application.routes.draw do
  root to: 'scholarships#index'
  get 'admin_index', to: 'scholarships#admin_index'
  resources :scholarships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
