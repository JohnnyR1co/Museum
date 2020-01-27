Rails.application.routes.draw do
  root 'welcome#index'
  get 'welcome/index'
  resources :divisions do
    resources :galleries
  end
end
