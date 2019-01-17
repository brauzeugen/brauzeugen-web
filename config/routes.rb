Rails.application.routes.draw do
  root 'home#index'

  get 'voices/:token', to: 'voices#show', as: :voice
  get 'voices/:token/claim', to: 'voices#new_claim', as: :claim_voice
  patch 'voices/:token/claim', to: 'voices#create_claim'

  get 'admin/', to: 'admin#dashboard'
  get 'admin/users', to: 'admin#users'
  get 'admin/voices', to: 'admin#voices'
end
