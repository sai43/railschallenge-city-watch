Rails.application.routes.draw do
  resources :emergencies
  resources :responders
  resources :fire
  resources :police
  resources :medical
end
