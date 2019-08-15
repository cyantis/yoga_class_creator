Rails.application.routes.draw do
  resources :teachers do
    resources :lessons do
      resources :notes, only: [:new, :create, :edit, :update, :destroy]
    end
  end

  resource :sessions, only: [:new, :create, :destroy]

  root 'sessions#new'
end
