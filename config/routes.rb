Rails.application.routes.draw do
  resources :warehouses do
    resources :products, only: [:new, :create, :index, :show, :edit, :update]
  end
  resources :products, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
