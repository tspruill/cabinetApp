Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
    
  resources :docs
  authenticated :user do
  root "docs#index", as: "auth_root"
  end
    
  root :to => redirect('/welcome/index')
  
end
