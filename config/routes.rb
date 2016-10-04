Rails.application.routes.draw do
 resources :tings
 root 'tings#index'
end
