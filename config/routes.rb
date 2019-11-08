Rails.application.routes.draw do
  root :to => 'scholarships#index'
  resource :scholarships
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
