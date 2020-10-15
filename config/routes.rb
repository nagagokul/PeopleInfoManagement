Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'user/index'
  get 'user/new'
  post 'user/create'
  patch 'user/update'
  get 'user/index'
  get 'user/show'
  get 'user/edit'
  get 'user/delete'
  get 'book/update'
end
