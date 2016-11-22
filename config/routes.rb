Rails.application.routes.draw do
  get 'general/index'

  root 'general#index'
  get 'contato', to: 'general#contact', as: :contact
  get 'atuacao', to: 'general#atuaction', as: :atuaction
  get 'quem-somos', to: 'general#about', as: :about
  get 'nossa-equipe', to: 'general#team', as: :team
  post 'contato', to: 'general#create', as: :messages
end
