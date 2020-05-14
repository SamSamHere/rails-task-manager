Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'

  get 'tasks/new', to: 'tasks#new' # Has to be above show
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: :task_page

  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks/:id', to: 'tasks#update', as: :task

  delete 'tasks/:id', to: 'tasks#destroy'
end


# <p>All Tasks <% link_to task.title, task_page_path(task.id) %> </p>
# <!--
# "Add a new Task" <%= link_to task.title, task_page_path(task.id) %> </p>
#   same as: <a href="">Add a new Task </a>
#   -->
