Smartbox::Application.routes.draw do
  root 'home#index'
  resources :orders, only: :create
end
