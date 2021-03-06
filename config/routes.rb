Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth',controllers: {
                                registrations: "auth/registrations"
                              }
  get '/', to: 'abstracts#index'
  get 'chats/add', to: 'chats#add'
  resources :chats
  get 'pdfs/add', to: 'pdfs#add'
  resources :abstracts
  resources :pdfs, only: %i[index create destroy]
  get 'pdfs/:id', to: 'pdfs#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
