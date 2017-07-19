Rails.application.routes.draw do
  resources :topics do
    resources :questions do
    end
  end
  # resources :answers
  resources :users

  root 'topics#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
