Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'products#new'
  resources :products
  post 'filter' => 'products#filter'
end
