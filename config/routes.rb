Rails.application.routes.draw do
  get 'qna/index'

  get 'education/index'

  get 'education/genderequality'

  get 'education/venereal'
  
  get 'education/contraception'

  devise_for :users
  resources :posts
  get 'home/index'

  get 'home/education'

  get 'home/quiz'

  root "home#index"

  get 'counsel/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
