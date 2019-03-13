# frozen_string_literal: true

Rails.application.routes.draw do
  # RESTful routes
  resources :brews, except: %i[new edit]
  resources :examples, except: %i[new edit]

  # Custom user routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  # Custom brew route
  get '/user-brews' => 'brews#user_index'
end
