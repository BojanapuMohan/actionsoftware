Srsfda::Application.routes.draw do
  

  resources :projects
  get "projects/title"

  resources :categories

  resources :products

  resources :reply_comments

  resources :comments

  resources :articles do
    get 'preview', on: :collection
    get 'all', on: :collection
    get 'my', on: :collection
  end

   


  get "optional/index"
  get "users/profile"
  get "users/index"
  get "users/show"
   get "users/settings"
  
  #devise_for :users
  devise_for :users, controllers: { registration: 'registrations' }
 
   root 'welcome#index'
   get 'welcome/dashboard'
   get 'welcome/index'
  
   resources :articles do
    resources :comments, :only => [:create]
  end
  resources :comments do
    resources :reply_comments, :only => [:create]
  end

end
