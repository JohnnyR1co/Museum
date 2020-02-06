Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'welcome/index'
  resources :divisions do
    resources :galleries
  end
end
