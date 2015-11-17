Grindstone::Engine.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'



  resources :posts
  get '/', to: redirect('posts')
end