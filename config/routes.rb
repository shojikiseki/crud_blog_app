Rails.application.routes.draw do

  get '/blogs' => 'blogs#index'
  get '/blogs/new' => 'blogs#new'
  post '/blogs' => 'blogs#create'
  # 以下のコードを追加
  get '/blogs/:id' => 'blogs#show'
  delete '/blogs/:id' => 'blogs#destroy'
end
