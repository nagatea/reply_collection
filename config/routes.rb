Rails.application.routes.draw do
  get 'reply_lists', to: 'reply_lists#index'

  get 'reply_lists/index'

  get 'reply_lists/add'
  post 'reply_lists/add'

  get 'reply_lists/edit'

  get 'reply_lists/detail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
