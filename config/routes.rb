Rails.application.routes.draw do
  resources :warehouses
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end


# Rails.application.routes.draw do
#   resources :products, only: [ :new, :create, :index, :show, :edit, :update, :destroy ]

#   resources :warehouses do
#     resources :products, only: [ :new, :create, :index ]
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   end
# end
