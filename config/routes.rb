Rails.application.routes.draw do
  get 'welcome/index'
  resources :bugs
  resources :devs
  resources :assignments do
    resources :bugs
    resources :devs
  end
  root 'welcome#index'
end
