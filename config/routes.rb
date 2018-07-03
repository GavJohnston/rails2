Rails.application.routes.draw do

resources :clinics do
 resources :doctors 
end
 root 'welcome#index'
end
