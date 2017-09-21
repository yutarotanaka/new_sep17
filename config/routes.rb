Rails.application.routes.draw do
  
  root 'application#home'

  get  'static_pages/home' => 'static_pages_#home'
  get  'static_pages/help' => 'static_pages_#help'
  get  'static_pages/user_home' => 'static_pages_#user_home'
  
  
  resources :keijibans
  
  get '/users/todos/:id' => 'todos#todo_detail'
  
  post '/users/todos/create' => 'todos#todo_create'
  
  post '/users/todos/universal' => 'todos#todo_create_universal'
  
  get '/users/:id' => 'users#todolist'
  
  post '/login' => 'users#login'
  
  post '/create' => 'users#create'
  
  get '/logout' => 'users#logout'
  
  get '/login_form' => 'users#login_form'
  
  get '/signup' => 'users#signup'

end
