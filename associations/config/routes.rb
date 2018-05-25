Rails.application.routes.draw do
  resources :products
  resources :projects
  # devise_for :users
   devise_for :users, controllers: {
        sessions: 'user/sessions',
        registraions: 'user/registraions'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "projects#new"
end
