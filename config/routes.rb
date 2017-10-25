Rails.application.routes.draw do
  get 'home/index'
  get 'home/result'
  root 'home#index'
  post 'home/result'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
