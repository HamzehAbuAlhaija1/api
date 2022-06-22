Rails.application.routes.draw do
  # get 'book/create'
   get 'book/read'
  # get 'book/update'
  get 'book/delete'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :book
 #resources :book , only: [:destory,:create]
end
