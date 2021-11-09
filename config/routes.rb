Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #DISPLAY TASKS
  get 'tasks', to: 'tasks#index'
  #READ A TASK
  get 'tasks/:id', to: 'tasks#show', as: :task
  #CREATE A TASK
  get 'task/new', to: 'tasks#new'
  post "tasks", to: "tasks#create"

  #UPDATE TASK
  get "tasks/:id/edit", to: "tasks#edit", as: "edit"
  patch "tasks/:id", to: "tasks#update"

  #DELETE TASK
  delete "tasks/:id", to: "tasks#destroy"
end
