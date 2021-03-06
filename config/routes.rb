Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items
  get '/styles', to: 'items#styles', :as => 'styles_item_get'
end
