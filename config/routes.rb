FbApp::Application.routes.draw do
  resources :users
  resources :microposts, only: [:create, :destroy]

  root  'static_pages#home'

  match '/contact', to: 'static_pages#contact', via: 'get'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end
