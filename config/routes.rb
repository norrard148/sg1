Rails.application.routes.draw do
  get 'comments/create'

  get 'comments/destroy'

  get 'qna/index'

  get 'education/index'

  get 'education/genderequality'

  get 'education/venereal'
  
  get 'education/contraception'
<<<<<<< HEAD
  get 'education/go'
  get 'education/go1'
  get 'education/go2'
  get 'education/go3'
  devise_for :users
  get 'posts/go/:id', to: 'posts#go', as: 'posts_g'
  resources :posts
  get 'home/index'
  
=======

  devise_for :users
  resources :posts
  get 'home/index'

>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
  get 'home/education'

  get 'home/quiz'

  get 'user/index'

<<<<<<< HEAD
  get 'education/reference'
  
  root "home#index"
 
    resources :posts do
     
      resources :comments, only: [:create, :destroy]
     
    end
    
=======

  root "home#index"
    resources :posts do
      resources :comments, only: [:create, :destroy]
    end

>>>>>>> 68a445cba24cb6a6e671184dba0366d95c4a09e9
  get 'counsel/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
