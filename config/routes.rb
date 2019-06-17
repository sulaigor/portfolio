Rails.application.routes.draw do

  root 'home#index'
  get 'about-me', to: 'about#index', as: 'about_me'
  get 'contact-me', to: 'contact#index', as: 'contact_me'
  get 'sign-in', to: 'sign_in#index', as: 'sign_in'

end
