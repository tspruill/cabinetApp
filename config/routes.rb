Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root :to => redirect('/welcome/index')
  resources :docs
end
