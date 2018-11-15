Rails.application.routes.draw do
  get 'welcome/index'
  root :to => redirect('/welcome/index')
end
