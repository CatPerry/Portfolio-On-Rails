Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios, except: [:show]

  get 'ruby-items', to: 'portfolios#ruby'
  get 'javascript-items', to: 'portfolios#javascript'
  #creating new custon mapping for portfolio show, also changed index.html.erb link from portfolios_path to portfolio_show_path
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  
  get 'home', to: 'pages#home'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'pages/portfolio'

  resources :blogs do
    member do
      get :toggle_status
    end    
  end

  root to: 'pages#home'

end
