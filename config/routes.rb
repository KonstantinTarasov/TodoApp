Rails.application.routes.draw do
  root 'tasks#index'

  resources :tasks

  patch '/done/:id', to: 'tasks#done', as: :done_task
end
