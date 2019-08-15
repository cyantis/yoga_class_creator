Rails.application.routes.draw do
  resources :teachers do
    resources :lessons do
      resources :notes
    end
  end

  resource :sessions

  root 'sessions#new'
end
