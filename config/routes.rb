Rails.application.routes.draw do

  root 'home#index'
  get 'o-me', to: 'about#index', as: 'about_me'
  get 'contact', to: 'contact#index', as: 'contact_me'

end
