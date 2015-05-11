Rails.application.routes.draw do
  resources :votes
  resources :users
  resources :choices
  resources :decisions
  root "decisions#index"
end
