Rails.application.routes.draw do

  devise_for :users
resources :customers do
 resources :visits

end
 root 'welcome#index'
 end
