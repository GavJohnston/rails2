Rails.application.routes.draw do

resources :customers do
 resources :visits

end
 root 'welcome#index'
 end
