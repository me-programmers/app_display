HargaPasar::Application.routes.draw do
  resources :tb_periods
  
  resources :market_comparisons

  resources :pasars do
  	resources :komoditis
  end

  #get "displays/satu"
  #get "displays/dua"
  #get "displays/tiga"
  #get "displays/empat"
  #get "displays/lima"
  #get "displays/main"
  #get "displays/main2"
  #get "displays/theme1"
  #get "displays/theme2"
  #get "displays/theme3"
  #get "displays/theme4"
  get "displays/theme5"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end