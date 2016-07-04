Rails.application.routes.draw do
  resources :emergencies
  resources :responders
  resource :fire
end
