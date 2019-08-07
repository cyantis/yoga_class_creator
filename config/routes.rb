Rails.application.routes.draw do
  resources :teachers do
    resources :lessons
  end
end
