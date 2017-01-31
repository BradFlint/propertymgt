Rails.application.routes.draw do

  devise_for :landlords, controllers: {
        sessions: 'landlords/sessions', 
        registrations: 'landlords/registrations',
        passwords: 'landlords/passwords'
      }
  

  get '/properties/apply' => 'properties#apply', as: 'properties_apply'
  post '/properties/apply' => 'properties#application_request'
  get '/landlords/contact' => 'landlords#contact', as: 'landlords_contact'
  post 'tennants/sign_in' => 'sessions#create', as: 'sessions_create'
  get '/sessions/sign_in' => 'sessions#new', as: 'sessions'
  delete '/sessions/sign_out' => 'sessions#destroy', as: 'sign_out'
  get '/tennants/maintanence' => 'tennants#maintanence', as: 'tennants_maintanence'
  post '/tennants/maintanence' => 'tennants#maintanence_request'
  get '/tennants/:id/pay' => 'tennants#pay', as: 'tennants_pay'
  get '/properties/all' => 'properties#all', as: 'properties_all'
  get '/properties/:id/liststatus' => 'properties#liststatus', as: 'properties_liststatus'

  resources :tennants  
  resources :properties 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


root to: "home#index"
end
