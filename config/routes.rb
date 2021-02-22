Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  

  get '/authors/new', to: 'authors#new', as: 'new_author'
  get '/authors/:id', to: 'authors#show', as: 'author'
  get '/authors/:id/edit', to: 'authors#edit', as: 'edit_author'
  post '/authors', to: 'authors#create'
  patch '/authors/:id', to: 'authors#update'


  get '/posts/new', to: 'posts#new', as: 'new_post'
  get '/posts/:id', to: 'posts#show', as: 'post'
  get '/posts/:id/edit', to: 'posts#edit', as: 'edit_post'
  post '/posts', to: 'posts#create'
  patch '/posts/:id', to: 'posts#update'

end
