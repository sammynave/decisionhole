Rails.application.routes.draw do
  resources :decisions
  root "decisions#index"
end
