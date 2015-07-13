RailsBlog::Application.routes.draw do

  get 'comments/post', to: 'comments#post'

  resources :users
  resources :tags
  resources :posts

end
