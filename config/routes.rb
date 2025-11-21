Rails.application.routes.draw do
  get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"

  root "home#index", as: "home"

  #### ROUTES FOR PERSON #####

  # request the create person record form
  get "/people/new", to: "people#new" 
  # post request with new record data 
  post "/people", to: "people#create" 

  # request the edit person record form
  get "/people/:id/edit", to: "people#edit", as: "edit_person"
  # send edited data 
  patch "/people/:id", to: 'people#update'

  # display data about specific person
  get "/people/:id", to: "people#show", as: "person"

  # delete person record
  delete "/people/:id", to: "people#destroy", as: "delete_person"

  ###########################

  #### ROUTES FOR TASK ######

  # request the create task record form
  get "/tasks/new", to: "tasks#new" 
  # post request with new record data 
  post "/tasks", to: "tasks#create" 

  # request the edit task record form
  get "/tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  # send edited data 
  patch "/tasks/:id", to: 'tasks#update'

  # display data about specific task
  get "/tasks/:id", to: "tasks#show", as: "task"

  # delete task record
  delete "/tasks/:id", to: "tasks#destroy", as: "delete_task"

  ###########################
  
  
end
