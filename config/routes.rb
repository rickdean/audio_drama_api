Rails.application.routes.draw do
  resources :shows, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]


  resources :shows, only: [:index, :show, :create, :update, :destroy]
  # post '/shows', to: 'shows#create'
  # patch '/shows/:id', to: 'shows#update'
  # delete '/shows/:id', to: 'shows#destroy'
end
