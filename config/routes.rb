Rails.application.routes.draw do
  root 'home#index'

  resources :brew_batches, only: :index
  get 'voices/:token', to: 'voices#show', as: :voice
  get 'voices/:token/claim', to: 'voices#new_claim', as: :claim_voice
  patch 'voices/:token/claim', to: 'voices#create_claim'

  namespace :admin do
    get '/', to: 'pages#dashboard'
    get '/users', to: 'pages#users'
    get '/voices', to: 'pages#voices'

    resources :brew_batches, except: [:show]
    patch 'brew_batches/:id/issue_voices', to: 'brew_batches#issue_voices', as: :issue_voices
    get 'brew_batches/:id/show_labels', to: 'brew_batches#show_labels', as: :show_labels
  end
end
