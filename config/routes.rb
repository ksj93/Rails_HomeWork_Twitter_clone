Rails.application.routes.draw do
  get 'posts/home'
  resources :posts
end
