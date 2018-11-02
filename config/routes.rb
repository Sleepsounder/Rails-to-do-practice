Rails.application.routes.draw do
  resources :tasks do
    resources :comments
  end
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
