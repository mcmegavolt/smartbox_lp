Smartbox::Application.routes.draw do
	if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  root 'home#index'
  resources :orders, only: :create
end
