Rails.application.routes.draw do
  resources :users
  resources :deposits
  get 'users/new'
  get 'accessed/index' => 'accessed#index'
  get 'accessed/deposit' => 'accessed#deposit'
  get 'accessed/statistics' => 'accessed#statistics'
  get 'accessed/transactions' => 'accessed#transactions'
 
  root "home#index"
  get 'callback' => 'callback#gettoken'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
