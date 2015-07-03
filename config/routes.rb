Astrus::Application.routes.draw do
  devise_for :users
  devise_scope :user do 
    get 'registrar', to: 'devise/registrations#new', as: :registrar 
    get 'comenzar', to: 'devise/sessions#new', as: :comenzar
    get 'destruir', to: 'devise/sessions#destroy', as: :destruir
  end
  resources :statuses
  get 'timeline', to: 'statuses#index',as: :timeline
  #despues de instalar devise, la instruccion 2 nos indica lo siguiente, ahora ya podemos ir a statuses desde la raiz:
  root to: 'statuses#index'
  get '/:id', to: 'perfil#show'

end
