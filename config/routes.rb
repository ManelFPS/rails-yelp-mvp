Rails.application.routes.draw do
  root "restaurants#index"
  resources :restaurants, only: %i[index show new create] do
    resources :reviews, only: :create
  end

  get "up" => "rails/health#show", as: :rails_health_check
end
