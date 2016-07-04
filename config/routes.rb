Rails.application.routes.draw do
  resources :emergencies
  resources :responders
  resources :fire
  resources :police
  resources :medical

  namespace :api, defaults: {format: 'json'} do
	  resources :emergencies
	  resources :responders
	  resources :fire
	  resources :police
	  resources :medical
  end

end
