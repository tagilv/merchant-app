Rails.application.routes.draw do
  resources :warehouses do
    resources :products, only: [:new, :create, :index, :show, :edit, :update, :destroy]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# , only: [:new, :create, :index, :show :]
