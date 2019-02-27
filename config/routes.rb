Rails.application.routes.draw do

  get '/blogs' => 'blogs#index'
  get '/blogs/new' => 'blogs#new'
  post '/blogs' => 'blogs#create'
  get '/blogs/:id' => 'blogs#show'
  # 以下のコードを追加
  get '/blogs/:id/edit' => 'blogs#edit'
  patch '/blogs/:id' => 'blogs#update'
  delete '/blogs/:id' => 'blogs#destroy'
end
