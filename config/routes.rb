RailsBlog::Application.routes.draw do

  # get 'comments/post', to: 'comments#post'

  resources :users
  resources :tags
  resources :posts do
    resources :comments, only: [:create]
  end

  #post /posts/1/comments

end
