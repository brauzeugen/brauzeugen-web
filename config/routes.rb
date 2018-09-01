Rails.application.routes.draw do
  root 'home#index'

  get 'voices/:token', to: 'voices#show', as: :voice
  get 'voices/:token/claim', to: 'voices#new_claim', as: :claim_voice
  patch 'voices/:token/claim', to: 'voices#create_claim'
end
