RSite::Application.routes.draw do
  resources :questions

  resources :surveys

  resources :answers

  resources :particeipants

  resources :trips
  
  resources :pages
  
  match '/faq',   :to => 'pages#faq'
  match '/about',   :to => 'pages#about'
  match '/services',   :to => 'pages#services'
  match '/testimony',   :to => 'pages#testimony'
  match '/charters',   :to => 'pages#charters'
  match '/contact',   :to => 'pages#contact'
  match '/directions',   :to => 'pages#directions'
  
  root :to => "pages#index"


end
