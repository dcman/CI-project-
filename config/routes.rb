RSite::Application.routes.draw do

  

  resources :sessions, :only => [:new, :create, :destroy]

  resources :admins

  resources :questions

  resources :surveys

  resources :answers

  resources :particeipants

  resources :trips
  
  resources :pages
  
  resources :cookies
  
  match '/faq',   :to => 'pages#faq'
  match '/about',   :to => 'pages#about'
  match '/services',   :to => 'pages#services'
  match '/testimony',   :to => 'pages#testimony'
  match '/charters',   :to => 'pages#charters'
  match '/contact',   :to => 'pages#contact'
  match '/directions',   :to => 'pages#directions'
  match '/admin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/feedback', :to=> 'cookies#new', :as => :feedback
  root :to => "pages#index"


end
